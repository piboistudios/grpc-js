package grpc.grpc_js;

typedef MethodDefinition<RequestType, ResponseType> = {
	var path : String;
	var requestStream : Bool;
	var responseStream : Bool;
	dynamic function requestSerialize(value:RequestType):global.Buffer;
	dynamic function responseDeserialize(bytes:global.Buffer):ResponseType;
	@:optional
	var originalName : String;
	dynamic function responseSerialize(value:ResponseType):global.Buffer;
	dynamic function requestDeserialize(bytes:global.Buffer):RequestType;
};