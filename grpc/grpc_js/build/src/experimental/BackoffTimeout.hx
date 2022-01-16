package grpc.grpc_js.build.src.experimental;

@:jsRequire("@grpc/grpc-js/build/src/experimental", "BackoffTimeout") extern class BackoffTimeout {
	function new(callback:() -> Void, ?options:grpc.grpc_js.build.src.backoff_timeout.BackoffOptions);
	private var callback : Dynamic;
	private var initialDelay : Dynamic;
	private var multiplier : Dynamic;
	private var maxDelay : Dynamic;
	private var jitter : Dynamic;
	private var nextDelay : Dynamic;
	private var timerId : Dynamic;
	private var running : Dynamic;
	private var hasRef : Dynamic;
	/**
		Call the callback after the current amount of delay time
	**/
	function runOnce():Void;
	/**
		Stop the timer. The callback will not be called until `runOnce` is called
		again.
	**/
	function stop():Void;
	/**
		Reset the delay time to its initial value.
	**/
	function reset():Void;
	function isRunning():Bool;
	function ref():Void;
	function unref():Void;
	static var prototype : BackoffTimeout;
}