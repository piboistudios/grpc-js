package grpc.grpc_js.build.src.make_client;

typedef ClientMethodDefinition<RequestType, ResponseType> = {
	var path : String;
	var requestStream : Bool;
	var responseStream : Bool;
	dynamic function requestSerialize(value:RequestType):global.Buffer;
	dynamic function responseDeserialize(bytes:global.Buffer):ResponseType;
	@:optional
	var originalName : String;
};