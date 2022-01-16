package grpc.grpc_js;

typedef TraceEvent = {
	var description : String;
	var severity : grpc.grpc_js.build.src.channelz.TraceSeverity;
	var timestamp : js.lib.Date;
	@:optional
	var childChannel : grpc.grpc_js.build.src.channelz.ChannelRef;
	@:optional
	var childSubchannel : grpc.grpc_js.build.src.channelz.SubchannelRef;
};