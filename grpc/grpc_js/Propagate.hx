package grpc.grpc_js;

/**
	NOTE: This enum is not currently used in any implemented API in this
	library. It is included only for type parity with the other implementation.
**/
@:jsRequire("@grpc/grpc-js", "propagate") @:enum extern abstract Propagate(Int) from Int to Int {
	var DEADLINE;
	var CENSUS_STATS_CONTEXT;
	var CENSUS_TRACING_CONTEXT;
	var CANCELLATION;
	var DEFAULTS;
}