package grpc.grpc_js.build.src.experimental;

/**
	A collection of functions associated with a channel that a load balancer
	can call as necessary.
**/
typedef ChannelControlHelper = {
	/**
		Returns a subchannel connected to the specified address.
	**/
	function createSubchannel(subchannelAddress:SubchannelAddress, subchannelArgs:grpc.grpc_js.ChannelOptions):grpc.grpc_js.build.src.subchannel.Subchannel;
	/**
		Passes a new subchannel picker up to the channel. This is called if either
		the connectivity state changes or if a different picker is needed for any
		other reason.
	**/
	function updateState(connectivityState:grpc.grpc_js.ConnectivityState, picker:grpc.grpc_js.build.src.picker.Picker):Void;
	/**
		Request new data from the resolver.
	**/
	function requestReresolution():Void;
	function addChannelzChild(child:ts.AnyOf2<grpc.grpc_js.build.src.channelz.ChannelRef, grpc.grpc_js.build.src.channelz.SubchannelRef>):Void;
	function removeChannelzChild(child:ts.AnyOf2<grpc.grpc_js.build.src.channelz.ChannelRef, grpc.grpc_js.build.src.channelz.SubchannelRef>):Void;
};