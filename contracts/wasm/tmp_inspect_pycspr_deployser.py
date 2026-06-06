import inspect
import pycspr
from pycspr import create_deploy_body, create_deploy_header, create_digest_of_deploy
from pycspr.types.node.rpc import DeployOfModuleBytes, DeployParameters
from pycspr.types.crypto import KeyAlgorithm
import pycspr.types

print('create_deploy_body:')
print(inspect.getsource(create_deploy_body))
print('--- create_deploy_header:')
print(inspect.getsource(create_deploy_header))
print('--- create_digest_of_deploy:')
print(inspect.getsource(create_digest_of_deploy))
print('--- deploy type source not needed yet')
print('--- serializer_of_entities module:')
import pycspr.serializer
print('pycspr.serializer', pycspr.serializer.__file__)
print('module attrs')
print([name for name in dir(pycspr.serializer) if 'Deploy' in name or 'encode' in name.lower() or 'serializer' in name.lower()])
