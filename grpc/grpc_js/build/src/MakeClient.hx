package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/make-client") @valueModuleOnly extern class MakeClient {
	/**
		Creates a constructor for a client with the given methods, as specified in
		the methods argument. The resulting class will have an instance method for
		each method in the service, which is a partial application of one of the
		[Client]{@link grpc.Client} request methods, depending on `requestSerialize`
		and `responseSerialize`, with the `method`, `serialize`, and `deserialize`
		arguments predefined.
	**/
	static function makeClientConstructor(methods:{ }, serviceName:String, ?classOptions:{ }):grpc.grpc_js.build.src.make_client.ServiceClientConstructor;
	/**
		Load a gRPC package definition as a gRPC object hierarchy.
	**/
	static function loadPackageDefinition(packageDef:grpc.grpc_js.build.src.make_client.PackageDefinition):grpc.grpc_js.GrpcObject;
}