package grpc.grpc_js.build.src.client_interceptors;

typedef InterceptorArguments = {
	var clientInterceptors : Array<grpc.grpc_js.Interceptor>;
	var clientInterceptorProviders : Array<grpc.grpc_js.InterceptorProvider>;
	var callInterceptors : Array<grpc.grpc_js.Interceptor>;
	var callInterceptorProviders : Array<grpc.grpc_js.InterceptorProvider>;
};