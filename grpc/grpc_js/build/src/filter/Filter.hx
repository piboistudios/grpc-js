package grpc.grpc_js.build.src.filter;

/**
	Filter classes represent related per-call logic and state that is primarily
	used to modify incoming and outgoing data
**/
typedef Filter = {
	function sendMetadata(metadata:js.lib.Promise<grpc.grpc_js.Metadata>):js.lib.Promise<grpc.grpc_js.Metadata>;
	function receiveMetadata(metadata:grpc.grpc_js.Metadata):grpc.grpc_js.Metadata;
	function sendMessage(message:js.lib.Promise<grpc.grpc_js.build.src.call_stream.WriteObject>):js.lib.Promise<grpc.grpc_js.build.src.call_stream.WriteObject>;
	function receiveMessage(message:js.lib.Promise<global.Buffer>):js.lib.Promise<global.Buffer>;
	function receiveTrailers(status:grpc.grpc_js.StatusObject):grpc.grpc_js.StatusObject;
	function refresh():Void;
};