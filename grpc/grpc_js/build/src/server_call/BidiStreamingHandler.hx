package grpc.grpc_js.build.src.server_call;

typedef BidiStreamingHandler<RequestType, ResponseType> = {
	dynamic function func(call:grpc.grpc_js.ServerDuplexStream<RequestType, ResponseType>):Void;
	dynamic function serialize(value:ResponseType):global.Buffer;
	dynamic function deserialize(bytes:global.Buffer):RequestType;
	var type : HandlerType;
	var path : String;
};