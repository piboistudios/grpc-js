package grpc.grpc_js.build.src.picker;

/**
	A standard picker representing a load balancer in the TRANSIENT_FAILURE
	state. Always responds to every pick request with an UNAVAILABLE status.
**/
@:jsRequire("@grpc/grpc-js/build/src/picker", "UnavailablePicker") extern class UnavailablePicker {
	function new(?status:grpc.grpc_js.StatusObject);
	private var status : Dynamic;
	function pick(pickArgs:PickArgs):TransientFailurePickResult;
	static var prototype : UnavailablePicker;
}