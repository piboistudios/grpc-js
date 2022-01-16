package grpc.grpc_js.build.src.channelz;

typedef SocketInfo = {
	var localAddress : Null<grpc.grpc_js.build.src.experimental.SubchannelAddress>;
	var remoteAddress : Null<grpc.grpc_js.build.src.experimental.SubchannelAddress>;
	var security : Null<TlsInfo>;
	var remoteName : Null<String>;
	var streamsStarted : Float;
	var streamsSucceeded : Float;
	var streamsFailed : Float;
	var messagesSent : Float;
	var messagesReceived : Float;
	var keepAlivesSent : Float;
	var lastLocalStreamCreatedTimestamp : Null<js.lib.Date>;
	var lastRemoteStreamCreatedTimestamp : Null<js.lib.Date>;
	var lastMessageSentTimestamp : Null<js.lib.Date>;
	var lastMessageReceivedTimestamp : Null<js.lib.Date>;
	var localFlowControlWindow : Null<Float>;
	var remoteFlowControlWindow : Null<Float>;
};