import json
from pathlib import Path
import pycspr
from pycspr.types.crypto import KeyAlgorithm
from pycspr.types.node.rpc import DeployOfModuleBytes

KEY_PATH = Path('..', '..', 'secret_key.pem')
WASM_PATH = Path('casperguard_final.wasm')

private_key = pycspr.parse_private_key(KEY_PATH, KeyAlgorithm.SECP256K1)
public_key = private_key.to_public_key()
params = pycspr.create_deploy_parameters(account=public_key, chain_name='casper-test')
payment = pycspr.create_standard_payment(50_000_000_000)

# Minimal module
min_wasm = b'\x00asm\x01\x00\x00\x00'
min_session = DeployOfModuleBytes(module_bytes=min_wasm, args=[])
min_deploy = pycspr.create_deploy(params, payment, min_session)
min_deploy.approve(private_key)
min_dict = pycspr.to_json(min_deploy)
if isinstance(min_dict, str):
    min_dict = json.loads(min_dict)
with open('tmp_minimal_deploy.json', 'w', encoding='utf-8') as f:
    json.dump(min_dict, f, indent=2)

# Full wasm module
full_wasm = WASM_PATH.read_bytes()
full_session = DeployOfModuleBytes(module_bytes=full_wasm, args=[])
full_deploy = pycspr.create_deploy(params, payment, full_session)
full_deploy.approve(private_key)
full_dict = pycspr.to_json(full_deploy)
if isinstance(full_dict, str):
    full_dict = json.loads(full_dict)
with open('tmp_full_deploy.json', 'w', encoding='utf-8') as f:
    json.dump(full_dict, f, indent=2)

print('wrote tmp_minimal_deploy.json and tmp_full_deploy.json')
print('minimal session byte count', len(min_wasm))
print('full session byte count', len(full_wasm))
print('min approval signer', min_dict['approvals'][0]['signer'])
print('full approval signer', full_dict['approvals'][0]['signer'])
print('min signature prefix', min_dict['approvals'][0]['signature'][:10])
print('full signature prefix', full_dict['approvals'][0]['signature'][:10])
