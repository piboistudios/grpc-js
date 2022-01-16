package grpc.grpc_js.build.src.channelz;

typedef SubchannelInfo = {
	var target : String;
	var state : grpc.grpc_js.ConnectivityState;
	var trace : ChannelzTrace;
	var callTracker : ChannelzCallTracker;
	var children : ChannelzChildren;
};