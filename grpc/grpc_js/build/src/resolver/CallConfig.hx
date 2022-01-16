package grpc.grpc_js.build.src.resolver;

typedef CallConfig = {
	var methodConfig : grpc.grpc_js.build.src.service_config.MethodConfig;
	@:optional
	dynamic function onCommitted():Void;
	var pickInformation : { };
	var status : grpc.grpc_js.Status;
	var dynamicFilterFactories : Array<grpc.grpc_js.build.src.filter.FilterFactory<grpc.grpc_js.build.src.filter.Filter>>;
};