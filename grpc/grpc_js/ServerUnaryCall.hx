package grpc.grpc_js;

typedef ServerUnaryCall<RequestType, ResponseType> = {
	var cancelled : Bool;
	final metadata : Metadata;
	function getPeer():String;
	function sendMetadata(responseMetadata:Metadata):Void;
	function getDeadline():ts.AnyOf2<Float, js.lib.Date>;
} & node.IEvents & {
	var request : RequestType;
};