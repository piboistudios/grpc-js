package grpc.grpc_js.build.src.call_stream;

typedef MessageContext = {
	@:optional
	dynamic function callback(?error:js.lib.Error):Void;
	@:optional
	var flags : Float;
};