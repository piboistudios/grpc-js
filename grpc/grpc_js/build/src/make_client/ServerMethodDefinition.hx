package grpc.grpc_js.build.src.make_client;

typedef ServerMethodDefinition<RequestType, ResponseType> = {
	var path : String;
	var requestStream : Bool;
	var responseStream : Bool;
	dynamic function responseSerialize(value:ResponseType):global.Buffer;
	dynamic function requestDeserialize(bytes:global.Buffer):RequestType;
	@:optional
	var originalName : String;
};