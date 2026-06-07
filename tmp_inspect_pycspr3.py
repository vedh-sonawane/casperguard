import pycspr
import pkgutil
print('pkg', pycspr.__file__)
print('submodules of pycspr.types:')
import pycspr.types
for m in pkgutil.iter_modules(pycspr.types.__path__):
    print(' ', m.name)
print('pycspr types attrs:')
print(sorted(name for name in dir(pycspr.types) if 'Deploy' in name or 'approval' in name.lower() or 'approve' in name.lower() or 'deploy' in name.lower()))
