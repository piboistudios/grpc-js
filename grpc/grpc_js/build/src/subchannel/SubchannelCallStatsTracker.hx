package grpc.grpc_js.build.src.subchannel;

typedef SubchannelCallStatsTracker = {
	function addMessageSent():Void;
	function addMessageReceived():Void;
};