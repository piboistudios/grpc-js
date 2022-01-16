package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/experimental") @valueModuleOnly extern class Experimental {
	static function trace(severity:grpc.grpc_js.LogVerbosity, tracer:String, text:String):Void;
	/**
		Register a resolver class to handle target names prefixed with the `prefix`
		string. This prefix should correspond to a URI scheme name listed in the
		[gRPC Name Resolution document](https://github.com/grpc/grpc/blob/master/doc/naming.md)
	**/
	static function registerResolver(scheme:String, resolverClass:grpc.grpc_js.build.src.resolver.ResolverConstructor):Void;
	static function uriToString(uri:grpc.grpc_js.build.src.uri_parser.GrpcUri):String;
	/**
		Create a child ChannelControlHelper that overrides some methods of the
		parent while letting others pass through to the parent unmodified. This
		allows other code to create these children without needing to know about
		all of the methods to be passed through.
	**/
	static function createChildChannelControlHelper(parent:grpc.grpc_js.build.src.experimental.ChannelControlHelper, overrides:{ /** Returns a subchannel connected to the specified address. **/ @:optional dynamic function createSubchannel(subchannelAddress:grpc.grpc_js.build.src.experimental.SubchannelAddress, subchannelArgs:grpc.grpc_js.ChannelOptions):grpc.grpc_js.build.src.subchannel.Subchannel; /** Passes a new subchannel picker up to the channel. This is called if eitherthe connectivity state changes or if a different picker is needed for anyother reason. **/ @:optional dynamic function updateState(connectivityState:grpc.grpc_js.ConnectivityState, picker:grpc.grpc_js.build.src.picker.Picker):Void; /** Request new data from the resolver. **/ @:optional dynamic function requestReresolution():Void; @:optional dynamic function addChannelzChild(child:ts.AnyOf2<grpc.grpc_js.build.src.channelz.ChannelRef, grpc.grpc_js.build.src.channelz.SubchannelRef>):Void; @:optional dynamic function removeChannelzChild(child:ts.AnyOf2<grpc.grpc_js.build.src.channelz.ChannelRef, grpc.grpc_js.build.src.channelz.SubchannelRef>):Void; }):grpc.grpc_js.build.src.experimental.ChannelControlHelper;
	static function registerLoadBalancerType(typeName:String, loadBalancerType:grpc.grpc_js.build.src.load_balancer.LoadBalancerConstructor, loadBalancingConfigType:grpc.grpc_js.build.src.load_balancer.LoadBalancingConfigConstructor):Void;
	static function getFirstUsableConfig(configs:Array<grpc.grpc_js.build.src.experimental.LoadBalancingConfig>, ?fallbackTodefault:Bool):grpc.grpc_js.build.src.experimental.LoadBalancingConfig;
	static function validateLoadBalancingConfig(obj:Dynamic):grpc.grpc_js.build.src.experimental.LoadBalancingConfig;
	static function subchannelAddressToString(address:grpc.grpc_js.build.src.experimental.SubchannelAddress):String;
	static function registerAdminService(getServiceDefinition:grpc.grpc_js.GetServiceDefinition, getHandlers:grpc.grpc_js.GetHandlers):Void;
}