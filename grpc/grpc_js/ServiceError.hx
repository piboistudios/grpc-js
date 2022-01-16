package grpc.grpc_js;

/**
	A type extending the built-in Error object with additional fields.
**/
typedef ServiceError = StatusObject & js.lib.IError;