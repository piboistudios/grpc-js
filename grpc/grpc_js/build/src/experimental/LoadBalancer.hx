package grpc.grpc_js.build.src.experimental;

/**
	Tracks one or more connected subchannels and determines which subchannel
	each request should use.
**/
typedef LoadBalancer = {
	/**
		Gives the load balancer a new list of addresses to start connecting to.
		The load balancer will start establishing connections with the new list,
		but will continue using any existing connections until the new connections
		are established
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
};