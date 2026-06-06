import pycspr
from pycspr.types.crypto import KeyAlgorithm

private_key = pycspr.parse_private_key(
    r"C:\Users\sonaw\Projects\CasperGuard\secret_key.pem",
    KeyAlgorithm.SECP256K1
)

pub_key = private_key.to_public_key()
print(f"Your PEM file public key: {pub_key.account_key.hex()}")