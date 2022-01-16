package grpc.grpc_js;

@:jsRequire("@grpc/grpc-js", "status") @:enum extern abstract Status(Int) from Int to Int {
	var OK;
	var CANCELLED;
	var UNKNOWN;
	var INVALID_ARGUMENT;
	var DEADLINE_EXCEEDED;
	var NOT_FOUND;
	var ALREADY_EXISTS;
	var PERMISSION_DENIED;
	var RESOURCE_EXHAUSTED;
	var FAILED_PRECONDITION;
	var ABORTED;
	var OUT_OF_RANGE;
	var UNIMPLEMENTED;
	var INTERNAL;
	var UNAVAILABLE;
	var DATA_LOSS;
	var UNAUTHENTICATED;
}