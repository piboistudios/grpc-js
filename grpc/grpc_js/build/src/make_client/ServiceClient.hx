package grpc.grpc_js.build.src.make_client;

typedef ServiceClient = {
	function close():Void;
	function getChannel():grpc.grpc_js.ChannelInterface;
	function waitForReady(deadline:ts.AnyOf2<Float, js.lib.Date>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	var checkOptionalUnaryResponseArguments : Dynamic;
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, metadata:grpc.grpc_js.Metadata, callback:grpc.grpc_js.RequestCallback<ResponseType>):grpc.grpc_js.build.src.call.SurfaceCall { })
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, options:grpc.grpc_js.CallOptions, callback:grpc.grpc_js.RequestCallback<ResponseType>):grpc.grpc_js.build.src.call.SurfaceCall { })
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, callback:grpc.grpc_js.RequestCallback<ResponseType>):grpc.grpc_js.build.src.call.SurfaceCall { })
	function makeUnaryRequest<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, metadata:grpc.grpc_js.Metadata, options:grpc.grpc_js.CallOptions, callback:grpc.grpc_js.RequestCallback<ResponseType>):grpc.grpc_js.build.src.call.SurfaceCall;
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, metadata:grpc.grpc_js.Metadata, callback:grpc.grpc_js.RequestCallback<ResponseType>):grpc.grpc_js.ClientWritableStream<RequestType> { })
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, options:grpc.grpc_js.CallOptions, callback:grpc.grpc_js.RequestCallback<ResponseType>):grpc.grpc_js.ClientWritableStream<RequestType> { })
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, callback:grpc.grpc_js.RequestCallback<ResponseType>):grpc.grpc_js.ClientWritableStream<RequestType> { })
	function makeClientStreamRequest<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, metadata:grpc.grpc_js.Metadata, options:grpc.grpc_js.CallOptions, callback:grpc.grpc_js.RequestCallback<ResponseType>):grpc.grpc_js.ClientWritableStream<RequestType>;
	var checkMetadataAndOptions : Dynamic;
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, ?options:grpc.grpc_js.CallOptions):grpc.grpc_js.ClientReadableStream<ResponseType> { })
	function makeServerStreamRequest<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, argument:RequestType, metadata:grpc.grpc_js.Metadata, ?options:grpc.grpc_js.CallOptions):grpc.grpc_js.ClientReadableStream<ResponseType>;
	@:overload(function<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, ?options:grpc.grpc_js.CallOptions):grpc.grpc_js.ClientDuplexStream<RequestType, ResponseType> { })
	function makeBidiStreamRequest<RequestType, ResponseType>(method:String, serialize:(value:RequestType) -> global.Buffer, deserialize:(value:global.Buffer) -> ResponseType, metadata:grpc.grpc_js.Metadata, ?options:grpc.grpc_js.CallOptions):grpc.grpc_js.ClientDuplexStream<RequestType, ResponseType>;
};