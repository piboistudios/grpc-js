package grpc.grpc_js;

/**
	Error class associated with passing both interceptors and interceptor
	providers to a client constructor or as call options.
**/
@:jsRequire("@grpc/grpc-js", "InterceptorConfigurationError") extern class InterceptorConfigurationError extends js.lib.Error {
	function new(message:String);
	static var prototype : InterceptorConfigurationError;
}