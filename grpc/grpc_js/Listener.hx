package grpc.grpc_js;

typedef Listener = {
	@:optional
	dynamic function onReceiveMetadata(metadata:Metadata, next:(metadata:Metadata) -> Void):Void;
	@:optional
	dynamic function onReceiveMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void;
	@:optional
	dynamic function onReceiveStatus(status:StatusObject, next:(status:StatusObject) -> Void):Void;
};