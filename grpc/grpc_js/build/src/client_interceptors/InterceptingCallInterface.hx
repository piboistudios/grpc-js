package grpc.grpc_js.build.src.client_interceptors;

typedef InterceptingCallInterface = {
	function cancelWithStatus(status:grpc.grpc_js.Status, details:String):Void;
	function getPeer():String;
	function start(metadata:grpc.grpc_js.Metadata, ?listener:{ @:optional dynamic function onReceiveMetadata(metadata:grpc.grpc_js.Metadata):Void; @:optional dynamic function onReceiveMessage(message:Dynamic):Void; @:optional dynamic function onReceiveStatus(status:grpc.grpc_js.StatusObject):Void; }):Void;
	function sendMessageWithContext(context:grpc.grpc_js.build.src.call_stream.MessageContext, message:Dynamic):Void;
	function sendMessage(message:Dynamic):Void;
	function startRead():Void;
	function halfClose():Void;
	function setCredentials(credentials:grpc.grpc_js.CallCredentials):Void;
};