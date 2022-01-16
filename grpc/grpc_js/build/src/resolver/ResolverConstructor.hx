package grpc.grpc_js.build.src.resolver;

typedef ResolverConstructor = {
	/**
		Get the default authority for a target. This loosely corresponds to that
		target's hostname. Throws an error if this resolver class cannot parse the
		`target`.
	**/
	function getDefaultAuthority(target:grpc.grpc_js.build.src.uri_parser.GrpcUri):String;
};