package grpc.grpc_js.build.src.resolver;

/**
	A listener object passed to the resolver's constructor that provides name
	resolution updates back to the resolver's owner.
**/
typedef ResolverListener = {
	/**
		Called whenever the resolver has new name resolution results to report
	**/
	function onSuccessfulResolution(addressList:Array<grpc.grpc_js.build.src.experimental.SubchannelAddress>, serviceConfig:Null<grpc.grpc_js.build.src.experimental.ServiceConfig>, serviceConfigError:Null<grpc.grpc_js.StatusObject>, configSelector:Null<ConfigSelector>, attributes:{ }):Void;
	/**
		Called whenever a name resolution attempt fails.
	**/
	function onError(error:grpc.grpc_js.StatusObject):Void;
};