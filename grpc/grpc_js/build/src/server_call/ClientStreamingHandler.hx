package grpc.grpc_js.build.src.server_call;

typedef ClientStreamingHandler<RequestType, ResponseType> = {
	dynamic function func(call:grpc.grpc_js.ServerReadableStream<RequestType, ResponseType>, callback:grpc.grpc_js.SendUnaryData<ResponseType>):Void;
	dynamic function serialize(value:ResponseType):global.Buffer;
	dynamic function deserialize(bytes:global.Buffer):RequestType;
	var type : HandlerType;
	var path : String;
};