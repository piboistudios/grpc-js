package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/client-interceptors") @valueModuleOnly extern class ClientInterceptors {
	static function getInterceptingCall(interceptorArgs:grpc.grpc_js.build.src.client_interceptors.InterceptorArguments, methodDefinition:grpc.grpc_js.build.src.make_client.ClientMethodDefinition<Dynamic, Dynamic>, options:grpc.grpc_js.CallOptions, channel:grpc.grpc_js.ChannelInterface):grpc.grpc_js.build.src.client_interceptors.InterceptingCallInterface;
}