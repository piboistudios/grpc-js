package grpc.grpc_js.build.src.service_config;

typedef MethodConfig = {
	var name : Array<MethodConfigName>;
	@:optional
	var waitForReady : Bool;
	@:optional
	var timeout : grpc.grpc_js.build.src.experimental.Duration;
	@:optional
	var maxRequestBytes : Float;
	@:optional
	var maxResponseBytes : Float;
};