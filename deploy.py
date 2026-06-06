import json
import sys
import time
from pathlib import Path

import pycspr
import requests
from pycspr.types.crypto import KeyAlgorithm
from pycspr.types.node.rpc import DeployOfModuleBytes

SCRIPT_DIR = Path(__file__).resolve().parent
WASM_PATH = SCRIPT_DIR / "casperguard_final.wasm"
SECRET_KEY_PATH = SCRIPT_DIR.parent.parent / "secret_key.pem"

NODE_URLS = [
    "https://node.testnet.casper.network/rpc",
]
CHAIN_NAME = "casper-test"
PAYMENT_MOTES = 50_000_000_000  # 50 CSPR
MAX_SUBMIT_ATTEMPTS = 8
POLL_INTERVAL_SECONDS = 5
POLL_TIMEOUT_SECONDS = 300
EXPLORER_URL = "https://testnet.cspr.live/deploy/{deploy_hash}"


def _read_leb128(data: bytes, offset: int) -> tuple[int, int]:
    result = 0
    shift = 0
    while offset < len(data):
        byte = data[offset]
        offset += 1
        result |= (byte & 0x7F) << shift
        if byte < 0x80:
            return result, offset
        shift += 7
    raise ValueError("Invalid LEB128 encoding in WASM file.")


def _write_leb128(value: int) -> bytes:
    out = bytearray()
    while True:
        byte = value & 0x7F
        value >>= 7
        if value:
            out.append(byte | 0x80)
        else:
            out.append(byte)
            break
    return bytes(out)


def _grow_function_body_size(wasm_bytes: bytes, pattern_offset: int, growth: int) -> bytes:
    if growth == 0:
        return wasm_bytes

    data = bytearray(wasm_bytes)
    offset = 8
    while offset < len(data):
        section_id = data[offset]
        offset += 1
        section_size, offset = _read_leb128(data, offset)
        section_start = offset

        if section_id == 10:
            _, offset = _read_leb128(data, section_start)
            while offset < section_start + section_size:
                body_size_start = offset
                body_size, body_offset = _read_leb128(data, offset)
                body_end = body_offset + body_size
                if body_offset <= pattern_offset < body_end:
                    new_body_size = body_size + growth
                    encoded_size = _write_leb128(new_body_size)
                    old_width = body_offset - body_size_start
                    if len(encoded_size) != old_width:
                        raise ValueError("Cannot grow WASM function body size in place.")
                    data[body_size_start:body_offset] = encoded_size
                    return bytes(data)
                offset = body_end
            break

        offset = section_start + section_size

    raise ValueError("Could not locate WASM function body for main wrapper patch.")


def _grow_section_size(wasm_bytes: bytes, section_id: int, growth: int) -> bytes:
    if growth == 0:
        return wasm_bytes

    data = bytearray(wasm_bytes)
    offset = 8
    while offset < len(data):
        current_section_id = data[offset]
        offset += 1
        size_start = offset
        section_size, offset = _read_leb128(data, offset)
        section_start = offset

        if current_section_id == section_id:
            new_size = section_size + growth
            encoded_size = _write_leb128(new_size)
            old_size_width = offset - size_start
            if len(encoded_size) == old_size_width:
                data[size_start:offset] = encoded_size
                return bytes(data)
            raise ValueError(
                f"Cannot update WASM section {section_id} size without rewriting the module."
            )

        offset = section_start + section_size

    raise ValueError(f"WASM section {section_id} not found.")


def ensure_call_export(wasm_bytes: bytes) -> bytes:
    """Casper requires a `call` export with signature () -> nil."""
    if b"\x04call" in wasm_bytes:
        return wasm_bytes
    if b"\x04main" not in wasm_bytes:
        raise ValueError("WASM module is missing both `call` and `main` exports.")

    call_wrapper_patches = [
        (bytes.fromhex("1080808080000b"), bytes.fromhex("1080808080001a0b")),
        (bytes.fromhex("1082808080000b"), bytes.fromhex("1082808080001a0b")),
    ]
    patched_wrapper = False
    for old, new in call_wrapper_patches:
        pattern_offset = wasm_bytes.find(old)
        if pattern_offset >= 0:
            growth = len(new) - len(old)
            wasm_bytes = wasm_bytes.replace(old, new, 1)
            wasm_bytes = _grow_function_body_size(wasm_bytes, pattern_offset, growth)
            wasm_bytes = _grow_section_size(wasm_bytes, section_id=10, growth=growth)
            patched_wrapper = True
            break
    if not patched_wrapper:
        raise ValueError("Could not locate Odra main wrapper in WASM code section.")

    data = bytearray(wasm_bytes)
    print("Patching WASM for Casper: main -> call with () -> nil signature")

    offset = 8
    while offset < len(data):
        section_id = data[offset]
        offset += 1
        section_size, offset = _read_leb128(data, offset)
        section_start = offset

        if section_id == 1:
            type_count, type_offset = _read_leb128(data, section_start)
            nil_type_index = None
            for type_index in range(type_count):
                if data[type_offset] != 0x60:
                    raise ValueError("Unsupported WASM type section.")
                type_offset += 1
                param_count, type_offset = _read_leb128(data, type_offset)
                type_offset += param_count
                result_count, type_offset = _read_leb128(data, type_offset)
                if param_count == 0 and result_count == 0 and nil_type_index is None:
                    nil_type_index = type_index
                type_offset += result_count
            if nil_type_index is None:
                raise ValueError("WASM module is missing () -> nil function type.")

        if section_id == 3:
            function_count, function_offset = _read_leb128(data, section_start)
            main_function_index = function_count - 1
            data[function_offset + main_function_index] = nil_type_index

        offset = section_start + section_size

    patched = bytes(data).replace(b"\x04main", b"\x04call", 1)
    return patched


def read_wasm_bytes(wasm_path: Path) -> bytes:
    return ensure_call_export(wasm_path.read_bytes())


def build_signed_deploy(private_key, public_key, wasm_bytes):
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


def deploy_to_json(deploy) -> dict:
    deploy_dict = pycspr.to_json(deploy)
    if isinstance(deploy_dict, str):
        deploy_dict = json.loads(deploy_dict)
    return deploy_dict


def submit_deploy(deploy_dict: dict, node_url: str) -> dict:
    payload = {
        "jsonrpc": "2.0",
        "method": "account_put_deploy",
        "params": {"deploy": deploy_dict},
        "id": 1,
    }
    response = requests.post(node_url, json=payload, timeout=60)
    response.raise_for_status()
    return response.json()


def get_deploy_status(deploy_hash: str, node_url: str) -> dict | None:
    payload = {
        "jsonrpc": "2.0",
        "method": "info_get_deploy",
        "params": {"deploy_hash": deploy_hash},
        "id": 1,
    }
    response = requests.post(node_url, json=payload, timeout=30)
    response.raise_for_status()
    result = response.json()
    if "error" in result:
        return None
    return result.get("result")


def execution_finished(status: dict) -> bool:
    if status.get("execution_results"):
        return True
    execution_info = status.get("execution_info") or {}
    return "execution_result" in execution_info


def execution_succeeded(status: dict) -> tuple[bool, str]:
    for entry in status.get("execution_results", []):
        result = entry.get("result", {})
        if "Success" in result:
            return True, "success"
        if "Failure" in result:
            return False, json.dumps(result["Failure"])

    execution_info = status.get("execution_info") or {}
    execution_result = execution_info.get("execution_result", {})
    version = execution_result.get("Version2") or execution_result.get("Version1") or {}
    error_message = version.get("error_message")
    if error_message:
        return False, error_message
    if version:
        return True, "success"
    return False, "execution result unavailable"


def wait_for_execution(deploy_hash: str, node_url: str) -> dict:
    deadline = time.time() + POLL_TIMEOUT_SECONDS
    while time.time() < deadline:
        status = get_deploy_status(deploy_hash, node_url)
        if status and execution_finished(status):
            return status
        time.sleep(POLL_INTERVAL_SECONDS)
    raise TimeoutError(
        f"Deploy {deploy_hash} was accepted but did not finalize within "
        f"{POLL_TIMEOUT_SECONDS} seconds."
    )


def main():
    if not WASM_PATH.exists():
        print(f"ERROR: WASM file not found at: {WASM_PATH}", file=sys.stderr)
        sys.exit(1)
    if not SECRET_KEY_PATH.exists():
        print(f"ERROR: Secret key file not found at: {SECRET_KEY_PATH}", file=sys.stderr)
        sys.exit(1)

    print(f"Using WASM: {WASM_PATH}")
    print(f"Using key: {SECRET_KEY_PATH}")

    print("\nReading wasm...")
    try:
        wasm_bytes = read_wasm_bytes(WASM_PATH)
    except ValueError as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        sys.exit(1)
    print(f"Wasm size: {len(wasm_bytes)} bytes")

    print("Loading private key...")
    try:
        private_key = pycspr.parse_private_key(SECRET_KEY_PATH, KeyAlgorithm.SECP256K1)
    except Exception as exc:
        print(f"ERROR: Failed to parse private key: {exc}", file=sys.stderr)
        sys.exit(1)

    public_key = private_key.to_public_key()
    print(f"Public key: {public_key}")
    print(f"Key algorithm: {public_key.algo}")

    accepted_hash = None
    accepted_node = None
    last_error = "unknown error"

    print("\nSubmitting deploy to testnet...")
    for attempt in range(1, MAX_SUBMIT_ATTEMPTS + 1):
        node_url = NODE_URLS[(attempt - 1) % len(NODE_URLS)]
        try:
            deploy = build_signed_deploy(private_key, public_key, wasm_bytes)
            deploy_hash = deploy.hash.hex()
            deploy_dict = deploy_to_json(deploy)

            print(f"Attempt {attempt}/{MAX_SUBMIT_ATTEMPTS} via {node_url}")
            print(f"Deploy hash: {deploy_hash}")

            result = submit_deploy(deploy_dict, node_url)
            if "result" in result:
                accepted_hash = result["result"].get("deploy_hash", deploy_hash)
                accepted_node = node_url
                print("[OK] Deploy accepted by node")
                break

            error_info = result.get("error", {})
            last_error = error_info.get("data") or error_info.get("message") or str(error_info)
            print(f"[RETRY] Node rejected deploy: {last_error}")
        except Exception as exc:
            last_error = str(exc)
            print(f"[RETRY] Submission failed: {last_error}")

        time.sleep(1)

    if not accepted_hash:
        print("\n[FAILED]")
        print(f"Could not submit deploy after {MAX_SUBMIT_ATTEMPTS} attempts.")
        print(f"Last error: {last_error}")
        sys.exit(1)

    explorer_link = EXPLORER_URL.format(deploy_hash=accepted_hash)
    print(f"\nDeploy accepted. Waiting for finalization...")
    print(f"Track at: {explorer_link}")

    try:
        status = wait_for_execution(accepted_hash, accepted_node)
    except TimeoutError as exc:
        print(f"\n[PARTIAL SUCCESS]")
        print(str(exc))
        print(f"Deploy hash: {accepted_hash}")
        print(f"Track at: {explorer_link}")
        sys.exit(1)

    succeeded, details = execution_succeeded(status)
    if succeeded:
        print("\n[SUCCESS]")
        print(f"Deploy Hash: {accepted_hash}")
        print(f"View on CSPR.live: {explorer_link}")
        print(f"Execution status: {details}")
    else:
        print("\n[FAILED]")
        print(f"Deploy Hash: {accepted_hash}")
        print(f"View on CSPR.live: {explorer_link}")
        print(f"Execution status: {details}")
        sys.exit(1)


if __name__ == "__main__":
    main()
