package grpc.grpc_js;

@:jsRequire("@grpc/grpc-js", "InterceptingCall") extern class InterceptingCall {
	function new(nextCall:grpc.grpc_js.build.src.client_interceptors.InterceptingCallInterface, ?requester:{ @:optional dynamic function start(metadata:Metadata, listener:grpc.grpc_js.build.src.call_stream.InterceptingListener, next:(metadata:Metadata, listener:ts.AnyOf2<{ @:optional dynamic function onReceiveMetadata(metadata:Metadata, next:(metadata:Metadata) -> Void):Void; @:optional dynamic function onReceiveMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void; @:optional dynamic function onReceiveStatus(status:StatusObject, next:(status:StatusObject) -> Void):Void; }, grpc.grpc_js.build.src.call_stream.InterceptingListener>) -> Void):Void; @:optional dynamic function sendMessage(message:Dynamic, next:(message:Dynamic) -> Void):Void; @:optional dynamic function halfClose(next:() -> Void):Void; @:optional dynamic function cancel(next:() -> Void):Void; });
	private var nextCall : Dynamic;
	/**
		The requester that this InterceptingCall uses to modify outgoing operations
	**/
	private var requester : Dynamic;
	/**
		Indicates that metadata has been passed to the requester's start
		method but it has not been passed to the corresponding next callback
	**/
	private var processingMetadata : Dynamic;
	/**
		Message context for a pending message that is waiting for
	**/
	private var pendingMessageContext : Dynamic;
	private var pendingMessage : Dynamic;
	/**
		Indicates that a message has been passed to the requester's sendMessage
		method but it has not been passed to the corresponding next callback
	**/
	private var processingMessage : Dynamic;
	/**
		Indicates that a status was received but could not be propagated because
		a message was still being processed.
	**/
	private var pendingHalfClose : Dynamic;
	function cancelWithStatus(status:Status, details:String):Void;
	function getPeer():String;
	private var processPendingMessage : Dynamic;
	private var processPendingHalfClose : Dynamic;
	function start(metadata:Metadata, ?interceptingListener:{ @:optional dynamic function onReceiveMetadata(metadata:Metadata):Void; @:optional dynamic function onReceiveMessage(message:Dynamic):Void; @:optional dynamic function onReceiveStatus(status:StatusObject):Void; }):Void;
	function sendMessageWithContext(context:grpc.grpc_js.build.src.call_stream.MessageContext, message:Dynamic):Void;
	function sendMessage(message:Dynamic):Void;
	function startRead():Void;
	function halfClose():Void;
	function setCredentials(credentials:CallCredentials):Void;
	static var prototype : InterceptingCall;
}