import pycspr
import inspect

print('pycspr', pycspr.__file__)
print('version', getattr(pycspr, '__version__', 'unknown'))
print('create_deploy source:')
print(inspect.getsource(pycspr.create_deploy))
print('---')
print('Deploy.approve source:')
from pycspr import Deploy
print(inspect.getsource(Deploy.approve))
print('---')
print('to_json source:')
print(inspect.getsource(pycspr.to_json))
