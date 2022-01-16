package grpc.grpc_js.build.src.call_stream;

typedef CallStreamOptions = {
	var deadline : ts.AnyOf2<Float, js.lib.Date>;
	var flags : Float;
	var host : String;
	var parentCall : Null<grpc.grpc_js.build.src.server_call.ServerSurfaceCall>;
};