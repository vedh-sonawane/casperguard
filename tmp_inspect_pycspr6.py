import inspect
from pycspr.types.node import rpc
from pycspr import crypto
import pycspr

print('crypto.get_signature_for_deploy_approval source:')
print(inspect.getsource(crypto.get_signature_for_deploy_approval))
print('---')
print('crypto.verify_deploy_approval_signature source:')
print(inspect.getsource(crypto.verify_deploy_approval_signature))
print('---')
print('pycspr.to_json source:')
print(inspect.getsource(pycspr.to_json))
