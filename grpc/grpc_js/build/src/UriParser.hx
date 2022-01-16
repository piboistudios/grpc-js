package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/uri-parser") @valueModuleOnly extern class UriParser {
	static function parseUri(uriString:String):Null<grpc.grpc_js.build.src.uri_parser.GrpcUri>;
	static function splitHostPort(path:String):Null<grpc.grpc_js.build.src.uri_parser.HostPort>;
	static function uriToString(uri:grpc.grpc_js.build.src.uri_parser.GrpcUri):String;
}