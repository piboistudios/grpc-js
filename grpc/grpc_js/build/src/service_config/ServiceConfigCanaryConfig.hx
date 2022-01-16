package grpc.grpc_js.build.src.service_config;

typedef ServiceConfigCanaryConfig = {
	@:optional
	var clientLanguage : Array<String>;
	@:optional
	var percentage : Float;
	@:optional
	var clientHostname : Array<String>;
	var serviceConfig : grpc.grpc_js.build.src.experimental.ServiceConfig;
};