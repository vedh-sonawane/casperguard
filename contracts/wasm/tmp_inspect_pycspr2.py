import pycspr
import inspect
from pycspr.types import Deploy

print('pycspr', pycspr.__file__)
print('version', getattr(pycspr, '__version__', 'unknown'))
print('create_deploy source:')
print(inspect.getsource(pycspr.create_deploy))
print('---')
print('Deploy type:', Deploy)
print('Deploy.approve source:')
print(inspect.getsource(Deploy.approve))
print('---')
print('to_json source:')
print(inspect.getsource(pycspr.to_json))
