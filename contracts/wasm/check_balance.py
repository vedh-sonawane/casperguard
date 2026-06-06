import json
import requests

# Your account public key
ACCOUNT_ADDRESS = "0203479fa549aedd8af03eeabad43049bd3237ae770ff68b7d4a9606d8dc908ce5e0"
NODE_URL = "https://node.testnet.casper.network/rpc"

print(f"Checking balance for account: {ACCOUNT_ADDRESS}")
print()

try:
    # Obtain the latest state root hash
    payload_root = {
        "jsonrpc": "2.0",
        "method": "chain_get_state_root_hash",
        "params": {},
        "id": 1
    }
    root_response = requests.post(NODE_URL, json=payload_root, timeout=10)
    root_response.raise_for_status()
    root_result = root_response.json()

    if "result" not in root_result or "state_root_hash" not in root_result["result"]:
        raise Exception(root_result.get("error", "Failed to retrieve state root hash"))

    state_root_hash = root_result["result"]["state_root_hash"]
    print(f"Latest state root hash: {state_root_hash}\n")

    # Query account info by public key
    payload_account = {
        "jsonrpc": "2.0",
        "method": "state_get_account_info",
        "params": {
            "public_key": ACCOUNT_ADDRESS
        },
        "id": 1
    }
    response = requests.post(NODE_URL, json=payload_account, timeout=10)
    response.raise_for_status()
    result = response.json()

    if "error" in result:
        raise Exception(result["error"])

    account_info = result["result"]["account"]
    main_purse = account_info.get("main_purse")
    print(f"Main Purse: {main_purse}")
    print()

    if not main_purse:
        raise Exception("Main purse not found for account.")

    # Query balance for the purse
    payload_balance = {
        "jsonrpc": "2.0",
        "method": "state_get_balance",
        "params": {
            "state_root_hash": state_root_hash,
            "purse_uref": main_purse
        },
        "id": 1
    }
    balance_response = requests.post(NODE_URL, json=payload_balance, timeout=10)
    balance_response.raise_for_status()
    balance_result = balance_response.json()

    if "error" in balance_result:
        raise Exception(balance_result["error"])

    motes = int(balance_result["result"]["balance_value"])
    cspr = motes / 1_000_000_000

    print(f"Balance: {motes} motes ({cspr:.9f} CSPR)")

except Exception as e:
    print(f"Error checking balance: {e}")
    print()
    print("=" * 70)
    print("SOLUTION: You need testnet CSPR tokens")
    print("=" * 70)
    print()
    print("Option 1: Get free testnet tokens from Casper Faucet")
    print("  URL: https://testnet.cspr.live/tools/faucet")
    print("  Steps:")
    print("    1. Go to the URL above")
    print("    2. Enter your public key: 02...")
    print("    3. Request tokens")
    print()
    print("Option 2: Use a different funded account")
    print("Option 3: Reduce payment amount in deploy.py (currently 50 CSPR)")
    print()
    print("=" * 70)
