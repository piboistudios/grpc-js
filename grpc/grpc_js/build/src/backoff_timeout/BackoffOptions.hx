package grpc.grpc_js.build.src.backoff_timeout;

typedef BackoffOptions = {
	@:optional
	var initialDelay : Float;
	@:optional
	var multiplier : Float;
	@:optional
	var jitter : Float;
	@:optional
	var maxDelay : Float;
};