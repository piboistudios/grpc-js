package grpc.grpc_js.build.src.server_call;

typedef ServerStatusResponse = {
	@:optional
	var code : grpc.grpc_js.Status;
	@:optional
	var details : String;
	@:optional
	var metadata : grpc.grpc_js.Metadata;
};