package grpc.grpc_js.build.src.picker;

typedef TransientFailurePickResult = {
	var pickResultType : Int;
	/**
		The subchannel to use as the transport for the call. Only meaningful if
		`pickResultType` is COMPLETE. If null, indicates that the call should be
		dropped.
	**/
	var subchannel : Dynamic;
	/**
		The status object to end the call with. Populated if and only if
		`pickResultType` is TRANSIENT_FAILURE.
	**/
	var status : grpc.grpc_js.StatusObject;
	/**
		Extra FilterFactory (can be multiple encapsulated in a FilterStackFactory)
		provided by the load balancer to be used with the call. For technical
		reasons filters from this factory will not see sendMetadata events.
	**/
	var extraFilterFactories : std.Array<Any>;
	var onCallStarted : Dynamic;
};