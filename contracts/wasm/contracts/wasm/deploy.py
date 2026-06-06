import pycspr
from pycspr.types.crypto import KeyAlgorithm
from pycspr.types.node.rpc import DeployOfModuleBytes

# 1. Connect directly to the official Casper testnet node API
client = pycspr.NodeRpcClient(pycspr.NodeRpcConnectionInfo(
    host="node.testnet.cspr.cloud",
    port=7777
))

# 2. Setup your file paths
wasm_path = "casperguard_build_contract.wasm"
secret_key_path = "C:/Users/sonaw/Projects/CasperGuard/secret_key.pem"

print("Reading optimized smart contract bytecode...")
# The SDK provides a native helper to parse and read smart contract WASM paths
wasm_bytes = pycspr.read_wasm(wasm_path)

print("Authenticating private key signatures...")
# Make sure KeyAlgorithm matches your PEM format (ED25519 or SECP256K1)
private_key = pycspr.parse_private_key(secret_key_path, KeyAlgorithm.ED25519)

print("Assembling on-chain deployment package (Budget: 300 CSPR)...")
# Primitives are called directly from the root `pycspr` namespace
deploy_params = pycspr.create_deploy_parameters(
    account=private_key,
    chain_name="casper-test"
)

# Set standard payment payload (300 CSPR = 300,000,000,000 motes)
payment_session = pycspr.create_standard_payment(300_000_000_000)

# FIXED: Added the required 'args' parameter (even if empty) to satisfy the constructor
contract_session = DeployOfModuleBytes(
    module_bytes=wasm_bytes,
    args=[]
)

# Combine elements into a complete deploy entity
deploy = pycspr.create_deploy(deploy_params, payment_session, contract_session)

# 4. Sign and send the payload live
deploy.approve(private_key)
client.send_deploy(deploy)

print("--------------------------------------------------")
print("SUCCESS! Your unified ecosystem has been deployed.")
print(f"Deploy Hash ID: {deploy.hash.hex()}")
print("--------------------------------------------------")
