package grpc.grpc_js;

typedef CallProperties<RequestType, ResponseType> = {
	@:optional
	var argument : RequestType;
	var metadata : Metadata;
	var call : grpc.grpc_js.build.src.call.SurfaceCall;
	var channel : ChannelInterface;
	var methodDefinition : grpc.grpc_js.build.src.make_client.ClientMethodDefinition<RequestType, ResponseType>;
	var callOptions : CallOptions;
	@:optional
	dynamic function callback(err:Null<ServiceError>, ?value:ResponseType):Void;
};