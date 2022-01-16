package grpc.grpc_js.build.src.picker;

@:jsRequire("@grpc/grpc-js/build/src/picker", "PickResultType") @:enum extern abstract PickResultType(Int) from Int to Int {
	var COMPLETE;
	var QUEUE;
	var TRANSIENT_FAILURE;
	var DROP;
}