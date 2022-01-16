package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/service-config") @valueModuleOnly extern class ServiceConfig {
	static function validateServiceConfig(obj:Dynamic):grpc.grpc_js.build.src.experimental.ServiceConfig;
	/**
		Find the "grpc_config" record among the TXT records, parse its value as JSON, validate its contents,
		and select a service config with selection fields that all match this client. Most of these steps
		can fail with an error; the caller must handle any errors thrown this way.
	**/
	static function extractAndSelectServiceConfig(txtRecord:Array<Array<String>>, percentage:Float):Null<grpc.grpc_js.build.src.experimental.ServiceConfig>;
}