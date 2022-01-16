package grpc.grpc_js.build.src.channelz;

typedef ServerInfo = {
	var trace : ChannelzTrace;
	var callTracker : ChannelzCallTracker;
	var listenerChildren : ChannelzChildren;
	var sessionChildren : ChannelzChildren;
};