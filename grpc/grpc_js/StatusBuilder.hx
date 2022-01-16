package grpc.grpc_js;

/**
	A builder for gRPC status objects.
**/
@:jsRequire("@grpc/grpc-js", "StatusBuilder") extern class StatusBuilder {
	function new();
	private var code : Dynamic;
	private var details : Dynamic;
	private var metadata : Dynamic;
	/**
		Adds a status code to the builder.
	**/
	function withCode(code:Status):StatusBuilder;
	/**
		Adds details to the builder.
	**/
	function withDetails(details:String):StatusBuilder;
	/**
		Adds metadata to the builder.
	**/
	function withMetadata(metadata:Metadata):StatusBuilder;
	/**
		Builds the status object.
	**/
	function build():{
		@:optional
		var code : Status;
		@:optional
		var details : String;
		@:optional
		var metadata : Metadata;
	};
	static var prototype : StatusBuilder;
}