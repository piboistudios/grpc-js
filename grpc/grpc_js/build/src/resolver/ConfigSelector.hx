package grpc.grpc_js.build.src.resolver;

/**
	Selects a configuration for a method given the name and metadata. Defined in
	https://github.com/grpc/proposal/blob/master/A31-xds-timeout-support-and-config-selector.md#new-functionality-in-grpc
**/
typedef ConfigSelector = (methodName:String, metadata:grpc.grpc_js.Metadata) -> CallConfig;