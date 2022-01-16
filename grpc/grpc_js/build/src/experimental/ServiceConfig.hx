package grpc.grpc_js.build.src.experimental;

typedef ServiceConfig = {
	@:optional
	var loadBalancingPolicy : String;
	var loadBalancingConfig : Array<LoadBalancingConfig>;
	var methodConfig : Array<grpc.grpc_js.build.src.service_config.MethodConfig>;
};