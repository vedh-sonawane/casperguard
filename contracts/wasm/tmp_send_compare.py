import json
from pathlib import Path
import requests
import pycspr
from pycspr.types.crypto import KeyAlgorithm
from pycspr.types.node.rpc import DeployOfModuleBytes

NODE_URL = 'https://node.testnet.casper.network/rpc'
KEY_PATH = Path('..') / '..' / 'secret_key.pem'
WASM_PATH = Path('casperguard_final.wasm')

private_key = pycspr.parse_private_key(KEY_PATH, KeyAlgorithm.SECP256K1)
public_key = private_key.to_public_key()
params = pycspr.create_deploy_parameters(account=public_key, chain_name='casper-test')
payment = pycspr.create_standard_payment(50_000_000_000)

for name, bytes_data in [
    ('minimal', b'\x00asm\x01\x00\x00\x00'),
    ('full', WASM_PATH.read_bytes())
]:
    print('\n===', name, 'deploy ===')
    session = DeployOfModuleBytes(module_bytes=bytes_data, args=[])
    deploy = pycspr.create_deploy(params, payment, session)
    deploy.approve(private_key)
    deploy_dict = pycspr.to_json(deploy)
    if isinstance(deploy_dict, str):
        deploy_dict = json.loads(deploy_dict)
    payload = {'jsonrpc':'2.0','method':'account_put_deploy','params':{'deploy': deploy_dict},'id':1}
    r = requests.post(NODE_URL, json=payload, timeout=30)
    print('http', r.status_code)
    print(json.dumps(r.json(), indent=2))
