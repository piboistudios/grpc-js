package grpc.grpc_js;

@:jsRequire("@grpc/grpc-js", "logVerbosity") @:enum extern abstract LogVerbosity(Int) from Int to Int {
	var DEBUG;
	var INFO;
	var ERROR;
	var NONE;
}