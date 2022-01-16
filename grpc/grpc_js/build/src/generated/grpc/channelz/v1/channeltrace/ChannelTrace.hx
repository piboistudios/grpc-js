package grpc.grpc_js.build.src.generated.grpc.channelz.v1.channeltrace;

/**
	ChannelTrace represents the recent events that have occurred on the channel.
**/
typedef ChannelTrace = {
	/**
		Number of events ever logged in this tracing object. This can differ from
		events.size() because events can be overwritten or garbage collected by
		implementations.
	**/
	@:optional
	var num_events_logged : ts.AnyOf3<String, Float, long.Long>;
	/**
		Time that this channel was created.
	**/
	@:optional
	var creation_timestamp : Dynamic;
	/**
		List of events that have occurred on this channel.
	**/
	@:optional
	var events : Array<Dynamic>;
};