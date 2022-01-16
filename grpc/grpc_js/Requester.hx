package grpc.grpc_js;

typedef Requester = {
	@:optional
	dynamic function start(metadata:Metadata, listener:grpc.grpc_js.build.src.call_stream.InterceptingListener, next:(metadata:Metadata, listener:ts.AnyOf2<{ @:optional dynamic function onReceiveMetadata(metadata:Metadata, next:(metadata:Metadata) -> Void):Void; @:optional dynamic function onReceiveMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void; @:optional dynamic function onReceiveStatus(status:StatusObject, next:(status:StatusObject) -> Void):Void; }, grpc.grpc_js.build.src.call_stream.InterceptingListener>) -> Void):Void;
	@:optional
	dynamic function sendMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void;
	@:optional
	dynamic function halfClose(next:() -> Void):Void;
	@:optional
	dynamic function cancel(next:() -> Void):Void;
};