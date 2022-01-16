package grpc.grpc_js.build.src.subchannel;

typedef ConnectivityStateListener = (subchannel:Subchannel, previousState:grpc.grpc_js.ConnectivityState, newState:grpc.grpc_js.ConnectivityState) -> Void;