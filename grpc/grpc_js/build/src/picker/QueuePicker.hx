package grpc.grpc_js.build.src.picker;

/**
	A standard picker representing a load balancer in the IDLE or CONNECTING
	state. Always responds to every pick request with a QUEUE pick result
	indicating that the pick should be tried again with the next `Picker`. Also
	reports back to the load balancer that a connection should be established
	once any pick is attempted.
**/
@:jsRequire("@grpc/grpc-js/build/src/picker", "QueuePicker") extern class QueuePicker {
	function new(loadBalancer:grpc.grpc_js.build.src.experimental.LoadBalancer);
	private var loadBalancer : Dynamic;
	private var calledExitIdle : Dynamic;
	function pick(pickArgs:PickArgs):QueuePickResult;
	static var prototype : QueuePicker;
}