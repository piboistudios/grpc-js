package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/channelz") @valueModuleOnly extern class Channelz {
	static function registerChannelzChannel(name:String, getInfo:() -> grpc.grpc_js.build.src.channelz.ChannelInfo):grpc.grpc_js.build.src.channelz.ChannelRef;
	static function registerChannelzSubchannel(name:String, getInfo:() -> grpc.grpc_js.build.src.channelz.SubchannelInfo):grpc.grpc_js.build.src.channelz.SubchannelRef;
	static function registerChannelzServer(getInfo:() -> grpc.grpc_js.build.src.channelz.ServerInfo):grpc.grpc_js.build.src.channelz.ServerRef;
	static function registerChannelzSocket(name:String, getInfo:() -> grpc.grpc_js.build.src.channelz.SocketInfo):grpc.grpc_js.build.src.channelz.SocketRef;
	static function unregisterChannelzRef(ref:ts.AnyOf4<grpc.grpc_js.build.src.channelz.ChannelRef, grpc.grpc_js.build.src.channelz.ServerRef, grpc.grpc_js.build.src.channelz.SubchannelRef, grpc.grpc_js.build.src.channelz.SocketRef>):Void;
	static function getChannelzHandlers():grpc.grpc_js.build.src.generated.grpc.channelz.v1.channelz.ChannelzHandlers;
	static function getChannelzServiceDefinition():grpc.grpc_js.build.src.generated.grpc.channelz.v1.channelz.ChannelzDefinition;
	static function setup():Void;
}