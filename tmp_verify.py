import pycspr
from pycspr.types.crypto import KeyAlgorithm
from pathlib import Path
from pycspr.types.node.rpc import DeployOfModuleBytes

key = pycspr.parse_private_key(Path('..', '..', 'secret_key.pem'), KeyAlgorithm.SECP256K1)
public_key = key.to_public_key()
params = pycspr.create_deploy_parameters(account=public_key, chain_name='casper-test')
payment = pycspr.create_standard_payment(50000000000)
session = DeployOfModuleBytes(module_bytes=b'', args=[])
deploy = pycspr.create_deploy(params, payment, session)
deploy.approve(key)
print('deploy.hash len', len(deploy.hash))
print('sig len', len(deploy.approvals[0].signature))
print('verify', pycspr.verify_deploy_approval_signature(deploy.hash, deploy.approvals[0].signature, public_key.account_key))
