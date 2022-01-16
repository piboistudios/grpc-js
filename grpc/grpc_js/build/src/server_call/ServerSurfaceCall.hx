package grpc.grpc_js.build.src.server_call;

typedef ServerSurfaceCall = {
	var cancelled : Bool;
	final metadata : grpc.grpc_js.Metadata;
	function getPeer():String;
	function sendMetadata(responseMetadata:grpc.grpc_js.Metadata):Void;
	function getDeadline():ts.AnyOf2<Float, js.lib.Date>;
} & node.IEvents;