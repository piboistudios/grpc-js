package grpc.grpc_js.build.src.uri_parser;

typedef GrpcUri = {
	@:optional
	var scheme : String;
	@:optional
	var authority : String;
	var path : String;
};