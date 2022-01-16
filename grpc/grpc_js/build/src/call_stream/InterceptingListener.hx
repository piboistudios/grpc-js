package grpc.grpc_js.build.src.call_stream;

/**
	An object with methods for handling the responses to a call.
**/
typedef InterceptingListener = {
	function onReceiveMetadata(metadata:grpc.grpc_js.Metadata):Void;
	function onReceiveMessage(message:Dynamic):Void;
	function onReceiveStatus(status:grpc.grpc_js.StatusObject):Void;
};