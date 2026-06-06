import inspect
from pycspr.types.node.rpc import DeployOfModuleBytes
print(inspect.getsource(DeployOfModuleBytes))
try:
    from pycspr.types import WasmModule
    print('WasmModule from pycspr.types:', inspect.getsource(WasmModule))
except Exception as exc:
    print('could not load WasmModule from pycspr.types:', exc)
try:
    from pycspr.types.node.rpc import WasmModule as NodeWasmModule
    print('WasmModule from pycspr.types.node.rpc:', inspect.getsource(NodeWasmModule))
except Exception as exc:
    print('could not load WasmModule from pycspr.types.node.rpc:', exc)
