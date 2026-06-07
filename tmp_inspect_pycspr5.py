import pycspr
import pkgutil
from pycspr.types.node import rpc
print('pycspr.types.node.rpc path', rpc.__path__)
for m in pkgutil.iter_modules(rpc.__path__):
    print(' ', m.name)
print('dir rpc filtered:')
print([name for name in dir(rpc) if 'Deploy' in name or 'Approval' in name or 'approve' in name.lower()])
try:
    import inspect
    print('Deploy class source?')
    print(inspect.getsource(rpc.Deploy))
except Exception as e:
    print('cannot inspect Deploy source', e)
