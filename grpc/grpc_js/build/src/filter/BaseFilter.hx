package grpc.grpc_js.build.src.filter;

@:jsRequire("@grpc/grpc-js/build/src/filter", "BaseFilter") extern class BaseFilter {
	function new();
	function sendMetadata(metadata:js.lib.Promise<grpc.grpc_js.Metadata>):js.lib.Promise<grpc.grpc_js.Metadata>;
	function receiveMetadata(metadata:grpc.grpc_js.Metadata):grpc.grpc_js.Metadata;
	function sendMessage(message:js.lib.Promise<grpc.grpc_js.build.src.call_stream.WriteObject>):js.lib.Promise<grpc.grpc_js.build.src.call_stream.WriteObject>;
	function receiveMessage(message:js.lib.Promise<global.Buffer>):js.lib.Promise<global.Buffer>;
	function receiveTrailers(status:grpc.grpc_js.StatusObject):grpc.grpc_js.StatusObject;
	function refresh():Void;
	static var prototype : BaseFilter;
}