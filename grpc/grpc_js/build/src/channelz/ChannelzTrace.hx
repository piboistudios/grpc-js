package grpc.grpc_js.build.src.channelz;

@:jsRequire("@grpc/grpc-js/build/src/channelz", "ChannelzTrace") extern class ChannelzTrace {
	function new();
	var events : Array<grpc.grpc_js.TraceEvent>;
	var creationTimestamp : js.lib.Date;
	var eventsLogged : Float;
	function addTrace(severity:TraceSeverity, description:String, ?child:ts.AnyOf2<ChannelRef, SubchannelRef>):Void;
	function getTraceMessage():grpc.grpc_js.build.src.generated.grpc.channelz.v1.channeltrace.ChannelTrace;
	static var prototype : ChannelzTrace;
}