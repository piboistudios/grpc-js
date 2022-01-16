package grpc.grpc_js;

/**
	A generic gRPC client. Primarily useful as a base class for all generated
	clients.
**/
@:jsRequire("@grpc/grpc-js", "Client") extern class Client {
	function new(address:String, credentials:ChannelCredentials, ?options:ClientOptions);
	function close():Void;
	function getChannel():ChannelInterface;
	function waitForReady(deadline:ts.AnyOf2<Float, js.lib.Date>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	private var checkOptionalUnaryResponseArguments : Dynamic;
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, metadata:Metadata, callback:RequestCallback<ResponseType>):grpc.grpc_js.build.src.call.SurfaceCall { })
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, options:CallOptions, callback:RequestCallback<ResponseType>):grpc.grpc_js.build.src.call.SurfaceCall { })
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, callback:RequestCallback<ResponseType>):grpc.grpc_js.build.src.call.SurfaceCall { })
	function makeUnaryRequest<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, metadata:Metadata, options:CallOptions, callback:RequestCallback<ResponseType>):grpc.grpc_js.build.src.call.SurfaceCall;
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, metadata:Metadata, callback:RequestCallback<ResponseType>):ClientWritableStream<RequestType> { })
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, options:CallOptions, callback:RequestCallback<ResponseType>):ClientWritableStream<RequestType> { })
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, callback:RequestCallback<ResponseType>):ClientWritableStream<RequestType> { })
	function makeClientStreamRequest<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, metadata:Metadata, options:CallOptions, callback:RequestCallback<ResponseType>):ClientWritableStream<RequestType>;
	private var checkMetadataAndOptions : Dynamic;
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, ?options:CallOptions):ClientReadableStream<ResponseType> { })
	function makeServerStreamRequest<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, metadata:Metadata, ?options:CallOptions):ClientReadableStream<ResponseType>;
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, ?options:CallOptions):ClientDuplexStream<RequestType, ResponseType> { })
	function makeBidiStreamRequest<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, metadata:Metadata, ?options:CallOptions):ClientDuplexStream<RequestType, ResponseType>;
	static var prototype : Client;
}