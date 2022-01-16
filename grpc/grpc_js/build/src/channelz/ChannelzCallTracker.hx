package grpc.grpc_js.build.src.channelz;

@:jsRequire("@grpc/grpc-js/build/src/channelz", "ChannelzCallTracker") extern class ChannelzCallTracker {
	function new();
	var callsStarted : Float;
	var callsSucceeded : Float;
	var callsFailed : Float;
	var lastCallStartedTimestamp : Null<js.lib.Date>;
	function addCallStarted():Void;
	function addCallSucceeded():Void;
	function addCallFailed():Void;
	static var prototype : ChannelzCallTracker;
}