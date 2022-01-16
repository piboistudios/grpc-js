package grpc.grpc_js.build.src.metadata;

typedef MetadataOptions = {
	@:optional
	var idempotentRequest : Bool;
	@:optional
	var waitForReady : Bool;
	@:optional
	var cacheableRequest : Bool;
	@:optional
	var corked : Bool;
};