package grpc.grpc_js;

@:jsRequire("@grpc/grpc-js", "connectivityState") @:enum extern abstract ConnectivityState(Int) from Int to Int {
	var IDLE;
	var CONNECTING;
	var READY;
	var TRANSIENT_FAILURE;
	var SHUTDOWN;
}