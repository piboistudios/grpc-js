package grpc.grpc_js.build.src.client_interceptors;

/**
	An object with methods for intercepting and modifying outgoing call operations.
**/
typedef FullRequester = {
	dynamic function start(metadata:grpc.grpc_js.Metadata, listener:grpc.grpc_js.build.src.call_stream.InterceptingListener, next:(metadata:grpc.grpc_js.Metadata, listener:ts.AnyOf2<{ @:optional dynamic function onReceiveMetadata(metadata:grpc.grpc_js.Metadata, next:(metadata:grpc.grpc_js.Metadata) -> Void):Void; @:optional dynamic function onReceiveMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void; @:optional dynamic function onReceiveStatus(status:grpc.grpc_js.StatusObject, next:(status:grpc.grpc_js.StatusObject) -> Void):Void; }, grpc.grpc_js.build.src.call_stream.InterceptingListener>) -> Void):Void;
	dynamic function sendMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void;
	dynamic function halfClose(next:() -> Void):Void;
	dynamic function cancel(next:() -> Void):Void;
};