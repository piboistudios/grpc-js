package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/subchannel-address") @valueModuleOnly extern class SubchannelAddress {
	static function isTcpSubchannelAddress(address:grpc.grpc_js.build.src.experimental.SubchannelAddress):Bool;
	static function subchannelAddressEqual(address1:grpc.grpc_js.build.src.experimental.SubchannelAddress, address2:grpc.grpc_js.build.src.experimental.SubchannelAddress):Bool;
	static function subchannelAddressToString(address:grpc.grpc_js.build.src.experimental.SubchannelAddress):String;
	static function stringToSubchannelAddress(addressString:String, ?port:Float):grpc.grpc_js.build.src.experimental.SubchannelAddress;
}