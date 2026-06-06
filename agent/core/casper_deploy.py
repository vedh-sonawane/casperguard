"""Submit attestation deploys to Casper testnet with retry and execution polling."""

import importlib.util
import json
import time
from pathlib import Path

import pycspr
import requests
from pycspr.types.crypto import KeyAlgorithm
from pycspr.types.node.rpc import DeployOfModuleBytes

PROJECT_ROOT = Path(__file__).resolve().parents[2]
WASM_DIR = PROJECT_ROOT / "contracts" / "wasm"
WASM_PATH = WASM_DIR / "casperguard_final.wasm"

CHAIN_NAME = "casper-test"
PAYMENT_MOTES = 2_500_000_000  # 2.5 CSPR — minimum that executes successfully on testnet
MAX_SUBMIT_ATTEMPTS = 8
POLL_INTERVAL_SECONDS = 5
POLL_TIMEOUT_SECONDS = 300
EXPLORER_URL = "https://testnet.cspr.live/deploy/{deploy_hash}"


def _load_wasm_deploy_module():
    deploy_path = WASM_DIR / "deploy.py"
    spec = importlib.util.spec_from_file_location("casperguard_wasm_deploy", deploy_path)
    if spec is None or spec.loader is None:
        raise ImportError(f"Unable to load deploy helpers from {deploy_path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


_wasm_deploy = _load_wasm_deploy_module()
ensure_call_export = _wasm_deploy.ensure_call_export
get_deploy_status = _wasm_deploy.get_deploy_status


def _execution_finished(status: dict) -> bool:
    if status.get("execution_results"):
        return True
    execution_info = status.get("execution_info") or {}
    return bool(execution_info.get("execution_result"))


def _wait_for_execution(deploy_hash: str, node_url: str) -> dict:
    deadline = time.time() + POLL_TIMEOUT_SECONDS
    while time.time() < deadline:
        status = get_deploy_status(deploy_hash, node_url)
        if status and _execution_finished(status):
            return status
        time.sleep(POLL_INTERVAL_SECONDS)
    raise TimeoutError(
        f"Deploy {deploy_hash} was accepted but did not finalize within "
        f"{POLL_TIMEOUT_SECONDS} seconds."
    )


def _execution_succeeded(status: dict) -> tuple[bool, str]:
    for entry in status.get("execution_results", []):
        result = entry.get("result", {})
        if "Success" in result:
            return True, "success"
        if "Failure" in result:
            return False, json.dumps(result["Failure"])

    execution_info = status.get("execution_info") or {}
    execution_result = execution_info.get("execution_result") or {}
    version = execution_result.get("Version2") or execution_result.get("Version1") or {}
    error_message = version.get("error_message")
    if error_message:
        return False, error_message
    if version:
        return True, "success"
    return False, "execution result unavailable"


def _deploy_to_json(deploy) -> dict:
    deploy_dict = pycspr.to_json(deploy)
    if isinstance(deploy_dict, str):
        deploy_dict = json.loads(deploy_dict)
    return deploy_dict


def _submit_deploy(deploy_dict: dict, node_url: str) -> dict:
    payload = {
        "jsonrpc": "2.0",
        "method": "account_put_deploy",
        "params": {"deploy": deploy_dict},
        "id": 1,
    }
    response = requests.post(node_url, json=payload, timeout=60)
    response.raise_for_status()
    return response.json()


def _build_attestation_deploy(private_key, public_key, wasm_bytes):
    deploy_params = pycspr.create_deploy_parameters(
        account=public_key,
        chain_name=CHAIN_NAME,
    )
    payment = pycspr.create_standard_payment(PAYMENT_MOTES)
    session = DeployOfModuleBytes(module_bytes=wasm_bytes, args=[])
    deploy = pycspr.create_deploy(deploy_params, payment, session)
    deploy.approve(private_key)
    pycspr.validate_deploy(deploy)
    return deploy


def post_attestation_onchain(
    asset_id: str,
    deliberation: dict,
    key_path: str,
    node_url: str,
) -> str | None:
    """Post a module-bytes attestation deploy and return hash only after on-chain success."""
    print(f"\n  [CASPER] Connecting to testnet node...")
    print(f"  [CASPER] Node: {node_url}")
    print(f"  [CASPER] Attesting asset: {asset_id}")

    if not WASM_PATH.exists():
        print(f"  [CASPER] WASM not found at {WASM_PATH}")
        return None

    try:
        private_key = pycspr.parse_private_key(key_path, KeyAlgorithm.SECP256K1)
    except Exception as exc:
        print(f"  [CASPER] Failed to load private key: {exc}")
        return None

    public_key = private_key.to_public_key()
    wasm_bytes = ensure_call_export(WASM_PATH.read_bytes())

    consensus = deliberation.get("consensus_reached", False)
    print(
        f"  [CASPER] Consensus: {consensus}, "
        f"risk: {deliberation.get('avg_risk_score', 'n/a')}/100"
    )

    accepted_hash = None
    accepted_node = node_url
    last_error = "unknown error"

    for attempt in range(1, MAX_SUBMIT_ATTEMPTS + 1):
        try:
            deploy = _build_attestation_deploy(private_key, public_key, wasm_bytes)
            deploy_hash = deploy.hash.hex()
            deploy_dict = _deploy_to_json(deploy)

            print(f"  [CASPER] Submit attempt {attempt}/{MAX_SUBMIT_ATTEMPTS}...")
            result = _submit_deploy(deploy_dict, node_url)
            if "result" in result:
                accepted_hash = result["result"].get("deploy_hash", deploy_hash)
                print(f"  [CASPER] Deploy accepted: {accepted_hash}")
                break

            error_info = result.get("error", {})
            last_error = error_info.get("data") or error_info.get("message") or str(error_info)
            print(f"  [CASPER] Retry: {last_error}")
        except Exception as exc:
            last_error = str(exc)
            print(f"  [CASPER] Retry: {last_error}")

        time.sleep(1)

    if not accepted_hash:
        print(f"  [CASPER] Deploy failed after {MAX_SUBMIT_ATTEMPTS} attempts: {last_error}")
        return None

    explorer_link = EXPLORER_URL.format(deploy_hash=accepted_hash)
    print(f"  [CASPER] Waiting for finalization...")
    print(f"  [CASPER] Track: {explorer_link}")

    try:
        status = _wait_for_execution(accepted_hash, accepted_node)
    except TimeoutError as exc:
        print(f"  [CASPER] Timed out waiting for execution: {exc}")
        return None

    succeeded, details = _execution_succeeded(status)
    if succeeded:
        print(f"  [CASPER] Attestation posted successfully")
        print(f"  [CASPER] Execution status: {details}")
        print(f"  [CASPER] View on CSPR.live: {explorer_link}")
        return accepted_hash

    print(f"  [CASPER] Execution failed: {details}")
    print(f"  [CASPER] View on CSPR.live: {explorer_link}")
    return None
