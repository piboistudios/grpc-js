package grpc.grpc_js.build.src.call_stream;

typedef FullListener = {
	dynamic function onReceiveMetadata(metadata:grpc.grpc_js.Metadata, next:(metadata:grpc.grpc_js.Metadata) -> Void):Void;
	dynamic function onReceiveMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void;
	dynamic function onReceiveStatus(status:grpc.grpc_js.StatusObject, next:(status:grpc.grpc_js.StatusObject) -> Void):Void;
};