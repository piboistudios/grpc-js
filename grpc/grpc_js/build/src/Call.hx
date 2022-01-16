package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/call") @valueModuleOnly extern class Call {
	/**
		Construct a ServiceError from a StatusObject. This function exists primarily
		as an attempt to make the error stack trace clearly communicate that the
		error is not necessarily a problem in gRPC itself.
	**/
	static function callErrorFromStatus(status:grpc.grpc_js.StatusObject):grpc.grpc_js.ServiceError;
}