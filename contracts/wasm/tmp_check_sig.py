import pycspr
from pycspr.types.crypto import KeyAlgorithm
from pycspr.types.node.rpc import DeployOfModuleBytes
from pathlib import Path
from pycspr.crypto import get_hash
import ecdsa

KEY_PATH = Path('..')/'..'/'secret_key.pem'
WASM_PATH = Path('casperguard_final.wasm')
private_key = pycspr.parse_private_key(KEY_PATH, KeyAlgorithm.SECP256K1)
public_key = private_key.to_public_key()
params = pycspr.create_deploy_parameters(account=public_key, chain_name='casper-test')
payment = pycspr.create_standard_payment(50_000_000_000)
session = DeployOfModuleBytes(module_bytes=WASM_PATH.read_bytes(), args=[])
deploy = pycspr.create_deploy(params, payment, session)
# if already approved, ignore
sig = pycspr.crypto.get_signature_for_deploy_approval(deploy.hash, private_key)
print('len', len(sig), 'prefix', sig[0])
raw = sig[1:]
order = ecdsa.SECP256k1.order
r = int.from_bytes(raw[:32], 'big')
s = int.from_bytes(raw[32:], 'big')
print('r', r)
print('s', s)
print('s low?', s <= order//2)
print('order//2', order//2)
print('hash', deploy.hash.hex())
