package grpc.grpc_js.build.src.resolver;

/**
	A resolver class that handles one or more of the name syntax schemes defined
	in the [gRPC Name Resolution document](https://github.com/grpc/grpc/blob/master/doc/naming.md)
**/
typedef Resolver = {
	/**
		Indicates that the caller wants new name resolution data. Calling this
		function may eventually result in calling one of the `ResolverListener`
		functions, but that is not guaranteed. Those functions will never be
		called synchronously with the constructor or updateResolution.
	**/
	function updateResolution():Void;
	/**
		Destroy the resolver. Should be called when the owning channel shuts down.
	**/
	function destroy():Void;
};