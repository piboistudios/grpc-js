package grpc.grpc_js.build.src.call_stream;

typedef PartialCallStreamOptions = {
	@:optional
	var deadline : ts.AnyOf2<Float, js.lib.Date>;
	@:optional
	var flags : Float;
	@:optional
	var host : String;
	@:optional
	var parentCall : grpc.grpc_js.build.src.server_call.ServerSurfaceCall;
};