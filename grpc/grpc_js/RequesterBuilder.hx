package grpc.grpc_js;

@:jsRequire("@grpc/grpc-js", "RequesterBuilder") extern class RequesterBuilder {
	function new();
	private var start : Dynamic;
	private var message : Dynamic;
	private var halfClose : Dynamic;
	private var cancel : Dynamic;
	function withStart(start:grpc.grpc_js.build.src.client_interceptors.MetadataRequester):RequesterBuilder;
	function withSendMessage(sendMessage:grpc.grpc_js.build.src.client_interceptors.MessageRequester):RequesterBuilder;
	function withHalfClose(halfClose:grpc.grpc_js.build.src.client_interceptors.CloseRequester):RequesterBuilder;
	function withCancel(cancel:grpc.grpc_js.build.src.client_interceptors.CancelRequester):RequesterBuilder;
	function build():{
		@:optional
		dynamic function start(metadata:Metadata, listener:grpc.grpc_js.build.src.call_stream.InterceptingListener, next:(metadata:Metadata, listener:ts.AnyOf2<{ @:optional dynamic function onReceiveMetadata(metadata:Metadata, next:(metadata:Metadata) -> Void):Void; @:optional dynamic function onReceiveMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void; @:optional dynamic function onReceiveStatus(status:StatusObject, next:(status:StatusObject) -> Void):Void; }, grpc.grpc_js.build.src.call_stream.InterceptingListener>) -> Void):Void;
		@:optional
		dynamic function sendMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void;
		@:optional
		dynamic function halfClose(next:() -> Void):Void;
		@:optional
		dynamic function cancel(next:() -> Void):Void;
	};
	static var prototype : RequesterBuilder;
}