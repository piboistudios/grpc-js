package grpc.grpc_js.build.src.generated.grpc.channelz.v1.channeltrace;

/**
	ChannelTrace represents the recent events that have occurred on the channel.
**/
typedef ChannelTrace__Output = {
	/**
		Number of events ever logged in this tracing object. This can differ from
		events.size() because events can be overwritten or garbage collected by
		implementations.
	**/
	var num_events_logged : String;
	/**
		Time that this channel was created.
	**/
	var creation_timestamp : Dynamic;
	/**
		List of events that have occurred on this channel.
	**/
	var events : Array<Dynamic>;
};