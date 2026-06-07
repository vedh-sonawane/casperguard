import json
from pathlib import Path
import requests
import pycspr
from pycspr.types.crypto import KeyAlgorithm
from pycspr.types.node.rpc import DeployOfModuleBytes
import ecdsa
import hashlib

NODE_URL = 'https://node.testnet.casper.network/rpc'
KEY_PATH = Path('..')/'..'/'secret_key.pem'
private_key = pycspr.parse_private_key(KEY_PATH, KeyAlgorithm.SECP256K1)
public_key = private_key.to_public_key()
params = pycspr.create_deploy_parameters(account=public_key, chain_name='casper-test')
payment = pycspr.create_standard_payment(50_000_000_000)
session = DeployOfModuleBytes(module_bytes=Path('casperguard_final.wasm').read_bytes(), args=[])
deploy = pycspr.create_deploy(params, payment, session)

sk = ecdsa.SigningKey.from_string(private_key.pvk, curve=ecdsa.SECP256k1)
sig_raw = sk.sign_deterministic(deploy.hash, hashfunc=hashlib.sha256, sigencode=ecdsa.util.sigencode_string)
sig_with_prefix = bytes([private_key.algo.value]) + sig_raw

# Build custom approval dict
approval = {
    'signature': sig_with_prefix.hex(),
    'signer': public_key.account_key.hex()
}

deploy_dict = pycspr.to_json(deploy)
if isinstance(deploy_dict, str):
    deploy_dict = json.loads(deploy_dict)
# override approvals
if 'approvals' in deploy_dict:
    deploy_dict['approvals'] = [approval]
else:
    deploy_dict['approvals'] = [approval]

payload = {'jsonrpc': '2.0', 'method': 'account_put_deploy', 'params': {'deploy': deploy_dict}, 'id': 1}
print('deploy hash', deploy.hash.hex())
r = requests.post(NODE_URL, json=payload, timeout=30)
print(r.status_code)
print(json.dumps(r.json(), indent=2))
