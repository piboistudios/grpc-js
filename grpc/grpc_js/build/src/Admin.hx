package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/admin") @valueModuleOnly extern class Admin {
	static function registerAdminService(getServiceDefinition:grpc.grpc_js.GetServiceDefinition, getHandlers:grpc.grpc_js.GetHandlers):Void;
	static function addAdminServicesToServer(server:grpc.grpc_js.Server):Void;
}