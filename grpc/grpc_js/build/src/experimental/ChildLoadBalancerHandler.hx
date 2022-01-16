package grpc.grpc_js.build.src.experimental;

@:jsRequire("@grpc/grpc-js/build/src/experimental", "ChildLoadBalancerHandler") extern class ChildLoadBalancerHandler {
	function new(channelControlHelper:ChannelControlHelper);
	private final channelControlHelper : Dynamic;
	private var currentChild : Dynamic;
	private var pendingChild : Dynamic;
	private var ChildPolicyHelper : Dynamic;
	/**
		Prerequisites: lbConfig !== null and lbConfig.name is registered
	**/
	function updateAddressList(addressList:Array<SubchannelAddress>, lbConfig:LoadBalancingConfig, attributes:{ }):Void;
	/**
		If the load balancer is currently in the IDLE state, start connecting.
	**/
	function exitIdle():Void;
	/**
		If the load balancer is currently in the CONNECTING or TRANSIENT_FAILURE
		state, reset the current connection backoff timeout to its base value and
		transition to CONNECTING if in TRANSIENT_FAILURE.
	**/
	function resetBackoff():Void;
	/**
		The load balancer unrefs all of its subchannels and stops calling methods
		of its channel control helper.
	**/
	function destroy():Void;
	/**
		Get the type name for this load balancer type. Must be constant across an
		entire load balancer implementation class and must match the name that the
		balancer implementation class was registered with.
	**/
	function getTypeName():String;
	static var prototype : ChildLoadBalancerHandler;
}