package grpc.grpc_js.build.src.call_stream;

typedef Call = {
	function cancelWithStatus(status:grpc.grpc_js.Status, details:String):Void;
	function getPeer():String;
	function start(metadata:grpc.grpc_js.Metadata, listener:InterceptingListener):Void;
	function sendMessageWithContext(context:MessageContext, message:global.Buffer):Void;
	function startRead():Void;
	function halfClose():Void;
	function getDeadline():ts.AnyOf2<Float, js.lib.Date>;
	function getCredentials():grpc.grpc_js.CallCredentials;
	function setCredentials(credentials:grpc.grpc_js.CallCredentials):Void;
	function getMethod():String;
	function getHost():String;
};