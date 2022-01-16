package grpc.grpc_js.build.src.call_stream;

@:jsRequire("@grpc/grpc-js/build/src/call-stream", "Http2CallStream") extern class Http2CallStream {
	function new(methodName:String, channel:grpc.grpc_js.Channel, options:CallStreamOptions, filterStackFactory:grpc.grpc_js.build.src.filter_stack.FilterStackFactory, channelCallCredentials:grpc.grpc_js.CallCredentials, callNumber:Float);
	private final methodName : Dynamic;
	private final channel : Dynamic;
	private final options : Dynamic;
	private final channelCallCredentials : Dynamic;
	private final callNumber : Dynamic;
	var credentials : grpc.grpc_js.CallCredentials;
	var filterStack : grpc.grpc_js.build.src.filter_stack.FilterStack;
	private var http2Stream : Dynamic;
	private var pendingRead : Dynamic;
	private var isWriteFilterPending : Dynamic;
	private var pendingWrite : Dynamic;
	private var pendingWriteCallback : Dynamic;
	private var writesClosed : Dynamic;
	private var decoder : Dynamic;
	private var isReadFilterPending : Dynamic;
	private var canPush : Dynamic;
	/**
		Indicates that an 'end' event has come from the http2 stream, so there
		will be no more data events.
	**/
	private var readsClosed : Dynamic;
	private var statusOutput : Dynamic;
	private var unpushedReadMessages : Dynamic;
	private var unfilteredReadMessages : Dynamic;
	private var mappedStatusCode : Dynamic;
	private var finalStatus : Dynamic;
	private var subchannel : Dynamic;
	private var disconnectListener : Dynamic;
	private var listener : Dynamic;
	private var internalError : Dynamic;
	private var configDeadline : Dynamic;
	private var statusWatchers : Dynamic;
	private var streamEndWatchers : Dynamic;
	private var callStatsTracker : Dynamic;
	private var outputStatus : Dynamic;
	private var trace : Dynamic;
	/**
		On first call, emits a 'status' event with the given StatusObject.
		Subsequent calls are no-ops.
	**/
	private var endCall : Dynamic;
	private var maybeOutputStatus : Dynamic;
	private var push : Dynamic;
	private var handleFilterError : Dynamic;
	private var handleFilteredRead : Dynamic;
	private var filterReceivedMessage : Dynamic;
	private var tryPush : Dynamic;
	private var handleTrailers : Dynamic;
	private var writeMessageToStream : Dynamic;
	function attachHttp2Stream(stream:node.http2.ClientHttp2Stream, subchannel:grpc.grpc_js.build.src.subchannel.Subchannel, extraFilters:Array<grpc.grpc_js.build.src.filter.Filter>, callStatsTracker:grpc.grpc_js.build.src.subchannel.SubchannelCallStatsTracker):Void;
	function start(metadata:grpc.grpc_js.Metadata, listener:InterceptingListener):Void;
	private var destroyHttp2Stream : Dynamic;
	function cancelWithStatus(status:grpc.grpc_js.Status, details:String):Void;
	function getDeadline():ts.AnyOf2<Float, js.lib.Date>;
	function getCredentials():grpc.grpc_js.CallCredentials;
	function setCredentials(credentials:grpc.grpc_js.CallCredentials):Void;
	function getStatus():Null<grpc.grpc_js.StatusObject>;
	function getPeer():String;
	function getMethod():String;
	function getHost():String;
	function setConfigDeadline(configDeadline:ts.AnyOf2<Float, js.lib.Date>):Void;
	function addStatusWatcher(watcher:(status:grpc.grpc_js.StatusObject) -> Void):Void;
	function addStreamEndWatcher(watcher:(success:Bool) -> Void):Void;
	function addFilters(extraFilters:Array<grpc.grpc_js.build.src.filter.Filter>):Void;
	function startRead():Void;
	private var maybeCloseWrites : Dynamic;
	function sendMessageWithContext(context:MessageContext, message:global.Buffer):Void;
	function halfClose():Void;
	static var prototype : Http2CallStream;
}