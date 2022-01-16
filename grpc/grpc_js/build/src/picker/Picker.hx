package grpc.grpc_js.build.src.picker;

/**
	A proxy object representing the momentary state of a load balancer. Picks
	subchannels or returns other information based on that state. Should be
	replaced every time the load balancer changes state.
**/
typedef Picker = {
	function pick(pickArgs:PickArgs):PickResult;
};