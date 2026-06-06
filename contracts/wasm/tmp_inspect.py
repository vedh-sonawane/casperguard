import pycspr
names = [n for n in dir(pycspr) if 'transfer' in n.lower()]
print(names)
print('has create_deploy_parameters', hasattr(pycspr, 'create_deploy_parameters'))
