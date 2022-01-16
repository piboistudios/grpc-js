package grpc.grpc_js.build.src.channelz;

@:jsRequire("@grpc/grpc-js/build/src/channelz", "ChannelzChildrenTracker") extern class ChannelzChildrenTracker {
	function new();
	private var channelChildren : Dynamic;
	private var subchannelChildren : Dynamic;
	private var socketChildren : Dynamic;
	function refChild(child:ts.AnyOf3<ChannelRef, SubchannelRef, SocketRef>):Void;
	function unrefChild(child:ts.AnyOf3<ChannelRef, SubchannelRef, SocketRef>):Void;
	function getChildLists():ChannelzChildren;
	static var prototype : ChannelzChildrenTracker;
}