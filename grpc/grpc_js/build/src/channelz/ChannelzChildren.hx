package grpc.grpc_js.build.src.channelz;

typedef ChannelzChildren = {
	var channels : Array<ChannelRef>;
	var subchannels : Array<SubchannelRef>;
	var sockets : Array<SocketRef>;
};