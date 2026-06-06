import pycspr
import pkgutil
import pycspr.types.node
print('pycspr.types.node path', pycspr.types.node.__path__)
for m in pkgutil.iter_modules(pycspr.types.node.__path__):
    print(' ', m.name)
print('dir pycspr.types.node (filtered)')
print([name for name in dir(pycspr.types.node) if 'Deploy' in name or 'approve' in name.lower() or 'Approval' in name])
