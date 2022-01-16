package grpc.grpc_js;

@:jsRequire("@grpc/grpc-js", "ListenerBuilder") extern class ListenerBuilder {
	function new();
	private var metadata : Dynamic;
	private var message : Dynamic;
	private var status : Dynamic;
	function withOnReceiveMetadata(onReceiveMetadata:grpc.grpc_js.build.src.call_stream.MetadataListener):ListenerBuilder;
	function withOnReceiveMessage(onReceiveMessage:grpc.grpc_js.build.src.call_stream.MessageListener):ListenerBuilder;
	function withOnReceiveStatus(onReceiveStatus:grpc.grpc_js.build.src.call_stream.StatusListener):ListenerBuilder;
	function build():{
		@:optional
		dynamic function onReceiveMetadata(metadata:Metadata, next:(metadata:Metadata) -> Void):Void;
		@:optional
		dynamic function onReceiveMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void;
		@:optional
		dynamic function onReceiveStatus(status:StatusObject, next:(status:StatusObject) -> Void):Void;
	};
	static var prototype : ListenerBuilder;
}