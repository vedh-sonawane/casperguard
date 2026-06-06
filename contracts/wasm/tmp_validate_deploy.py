import pycspr
from pycspr.types.crypto import KeyAlgorithm
from pycspr.types.node.rpc import DeployOfModuleBytes
from pathlib import Path

KEY_PATH = Path('..') / '..' / 'secret_key.pem'
WASM_PATH = Path('casperguard_final.wasm')
private_key = pycspr.parse_private_key(KEY_PATH, KeyAlgorithm.SECP256K1)
public_key = private_key.to_public_key()
params = pycspr.create_deploy_parameters(account=public_key, chain_name='casper-test')
payment = pycspr.create_standard_payment(50_000_000_000)
session = DeployOfModuleBytes(module_bytes=WASM_PATH.read_bytes(), args=[])
deploy = pycspr.create_deploy(params, payment, session)
deploy.approve(private_key)

print('deploy hash', deploy.hash.hex())
print('approvals', len(deploy.approvals))
print('approval signer', deploy.approvals[0].signer.account_key.hex())
print('signature len', len(deploy.approvals[0].signature))

try:
    pycspr.validate_deploy(deploy)
    print('validate_deploy: OK')
except Exception as e:
    print('validate_deploy: FAILED', type(e), e)
