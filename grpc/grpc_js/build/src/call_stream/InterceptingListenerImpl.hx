package grpc.grpc_js.build.src.call_stream;

@:jsRequire("@grpc/grpc-js/build/src/call-stream", "InterceptingListenerImpl") extern class InterceptingListenerImpl {
	function new(listener:FullListener, nextListener:InterceptingListener);
	private var listener : Dynamic;
	private var nextListener : Dynamic;
	private var processingMetadata : Dynamic;
	private var hasPendingMessage : Dynamic;
	private var pendingMessage : Dynamic;
	private var processingMessage : Dynamic;
	private var pendingStatus : Dynamic;
	private var processPendingMessage : Dynamic;
	private var processPendingStatus : Dynamic;
	function onReceiveMetadata(metadata:grpc.grpc_js.Metadata):Void;
	function onReceiveMessage(message:Dynamic):Void;
	function onReceiveStatus(status:grpc.grpc_js.StatusObject):Void;
	static var prototype : InterceptingListenerImpl;
}