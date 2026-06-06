import asyncio
import os
from dotenv import load_dotenv
from agent.agents import risk_agent, compliance_agent, treasury_agent
from agent.core.deliberation import deliberate
from agent.core.mock_servers import start_mock_servers, verify_mock_servers, wait_for_mock_servers
from agent.core.casper_deploy import post_attestation_onchain
from agent.core.dashboard_export import (
    append_feed,
    finish_dashboard,
    init_dashboard,
    record_asset_result,
)

load_dotenv()

COMPLIANCE_CONTRACT = os.getenv("COMPLIANCE_REGISTRY_CONTRACT")
DEFI_GATE_CONTRACT = os.getenv("DEFI_GATE_CONTRACT")
NODE_URL = os.getenv("TESTNET_NODE_URL")
KEY_PATH = os.getenv("AGENT_PRIVATE_KEY_PATH")

TEST_ASSETS = [
    {"id": "ASSET-GOOD", "name": "TechCorp Invoice 2026-A", "type": "invoice", "issuer": "TechCorp Ltd", "value_usd": 250000},
    {"id": "ASSET-MID", "name": "Property Token Berlin-7", "type": "real_estate", "issuer": "PropFund GmbH", "value_usd": 1200000},
    {"id": "ASSET-BAD", "name": "Unknown Bond XZ", "type": "bond", "issuer": "Anon Issuer", "value_usd": 500000},
]

def print_banner():
    print("\n" + "="*60)
    print("  CASPERGUARD — Autonomous Multi-Agent Compliance System")
    print("  Running on Casper Testnet")
    print("="*60)

def print_result(asset, deliberation, gate_result):
    print(f"\n{'='*60}")
    print(f"FINAL RESULT — {asset['name']}")
    print(f"Asset ID: {asset['id']}")
    print(f"Value: ${asset['value_usd']:,} USD")
    print(f"Agent consensus: {deliberation['consensus_reached']}")
    print(f"Average risk score: {deliberation['avg_risk_score']}/100")
    print(f"Sanctions clear: {deliberation['sanctions_clear']}")
    print(f"Credit score: {deliberation['credit_score']}")
    print(f"Jurisdiction eligible: {deliberation['jurisdiction_eligible']}")
    print(f"DeFi Gate decision: {gate_result}")
    print(f"Votes for: {deliberation['votes_for']} | Against: {deliberation['votes_against']}")
    print(f"{'='*60}")

def simulate_gate(deliberation):
    if not deliberation["consensus_reached"]:
        return "REJECTED: no agent consensus"
    if not deliberation["sanctions_clear"]:
        return "REJECTED: sanctions flag on asset"
    if deliberation["avg_risk_score"] >= 70:
        return "REJECTED: aggregate risk score too high"
    if not deliberation["jurisdiction_eligible"]:
        return "REJECTED: jurisdiction not eligible"
    return "ACCEPTED: asset cleared for DeFi collateral"

async def run_asset(asset):
    print(f"\n\n{'>'*60}")
    print(f"PROCESSING: {asset['name']} ({asset['id']})")
    print(f"{'>'*60}")

    print("\n[PHASE 1] Spawning 3 specialized agents in parallel...")
    append_feed(f"Processing {asset['name']} ({asset['id']})")
    verdicts = await asyncio.gather(
        risk_agent.analyze(asset["id"]),
        compliance_agent.analyze(asset["id"]),
        treasury_agent.analyze(asset["id"]),
    )

    print("\n[PHASE 2] Agents deliberating...")
    result = deliberate(list(verdicts))

    print("\n[PHASE 3] Posting multi-agent consensus to Casper Testnet...")
    deploy_hash = post_attestation_onchain(asset["id"], result, KEY_PATH, NODE_URL)

    print("\n[PHASE 4] Testing DeFi Gate with attestation data...")
    gate_result = simulate_gate(result)

    print_result(asset, result, gate_result)
    record_asset_result(asset, result, gate_result, deploy_hash)
    return gate_result

async def main():
    print_banner()

    print("\nStarting mock x402 data APIs...")
    start_mock_servers()
    wait_for_mock_servers()
    await verify_mock_servers()
    print("Mock APIs ready (ports 8001, 8002, 8003)")

    init_dashboard({
        "compliance_registry": COMPLIANCE_CONTRACT,
        "defi_gate": DEFI_GATE_CONTRACT,
    })

    print(f"\nContracts loaded:")
    print(f"  ComplianceRegistry: {COMPLIANCE_CONTRACT}")
    print(f"  DefiGate: {DEFI_GATE_CONTRACT}")
    print(f"\nProcessing {len(TEST_ASSETS)} RWA assets...\n")

    for asset in TEST_ASSETS:
        await run_asset(asset)
        await asyncio.sleep(5)

    print("\n\nALL ASSETS PROCESSED. CasperGuard cycle complete.")
    finish_dashboard()

if __name__ == "__main__":
    asyncio.run(main())