package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/resolver") @valueModuleOnly extern class Resolver {
	/**
		Register a resolver class to handle target names prefixed with the `prefix`
		string. This prefix should correspond to a URI scheme name listed in the
		[gRPC Name Resolution document](https://github.com/grpc/grpc/blob/master/doc/naming.md)
	**/
	static function registerResolver(scheme:String, resolverClass:grpc.grpc_js.build.src.resolver.ResolverConstructor):Void;
	/**
		Register a default resolver to handle target names that do not start with
		any registered prefix.
	**/
	static function registerDefaultScheme(scheme:String):Void;
	/**
		Create a name resolver for the specified target, if possible. Throws an
		error if no such name resolver can be created.
	**/
	static function createResolver(target:grpc.grpc_js.build.src.uri_parser.GrpcUri, listener:grpc.grpc_js.build.src.resolver.ResolverListener, options:grpc.grpc_js.ChannelOptions):grpc.grpc_js.build.src.resolver.Resolver;
	/**
		Get the default authority for the specified target, if possible. Throws an
		error if no registered name resolver can parse that target string.
	**/
	static function getDefaultAuthority(target:grpc.grpc_js.build.src.uri_parser.GrpcUri):String;
	static function mapUriDefaultScheme(target:grpc.grpc_js.build.src.uri_parser.GrpcUri):Null<grpc.grpc_js.build.src.uri_parser.GrpcUri>;
}