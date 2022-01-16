package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/call-stream") @valueModuleOnly extern class CallStream {
	static function isInterceptingListener(listener:ts.AnyOf2<{ @:optional dynamic function onReceiveMetadata(metadata:grpc.grpc_js.Metadata, next:(metadata:grpc.grpc_js.Metadata) -> Void):Void; @:optional dynamic function onReceiveMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void; @:optional dynamic function onReceiveStatus(status:grpc.grpc_js.StatusObject, next:(status:grpc.grpc_js.StatusObject) -> Void):Void; }, grpc.grpc_js.build.src.call_stream.InterceptingListener>):Bool;
}