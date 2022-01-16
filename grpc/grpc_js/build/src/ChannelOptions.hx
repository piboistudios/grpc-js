package grpc.grpc_js.build.src;

@:jsRequire("@grpc/grpc-js/build/src/channel-options") @valueModuleOnly extern class ChannelOptions {
	static function channelOptionsEqual(options1:grpc.grpc_js.ChannelOptions, options2:grpc.grpc_js.ChannelOptions):Bool;
	/**
		This is for checking provided options at runtime. This is an object for
		easier membership checking.
	**/
	static final recognizedOptions : {
		@:native("grpc.ssl_target_name_override")
		var grpc_ssl_target_name_override : Bool;
		@:native("grpc.primary_user_agent")
		var grpc_primary_user_agent : Bool;
		@:native("grpc.secondary_user_agent")
		var grpc_secondary_user_agent : Bool;
		@:native("grpc.default_authority")
		var grpc_default_authority : Bool;
		@:native("grpc.keepalive_time_ms")
		var grpc_keepalive_time_ms : Bool;
		@:native("grpc.keepalive_timeout_ms")
		var grpc_keepalive_timeout_ms : Bool;
		@:native("grpc.keepalive_permit_without_calls")
		var grpc_keepalive_permit_without_calls : Bool;
		@:native("grpc.service_config")
		var grpc_service_config : Bool;
		@:native("grpc.max_concurrent_streams")
		var grpc_max_concurrent_streams : Bool;
		@:native("grpc.initial_reconnect_backoff_ms")
		var grpc_initial_reconnect_backoff_ms : Bool;
		@:native("grpc.max_reconnect_backoff_ms")
		var grpc_max_reconnect_backoff_ms : Bool;
		@:native("grpc.use_local_subchannel_pool")
		var grpc_use_local_subchannel_pool : Bool;
		@:native("grpc.max_send_message_length")
		var grpc_max_send_message_length : Bool;
		@:native("grpc.max_receive_message_length")
		var grpc_max_receive_message_length : Bool;
		@:native("grpc.enable_http_proxy")
		var grpc_enable_http_proxy : Bool;
		@:native("grpc.enable_channelz")
		var grpc_enable_channelz : Bool;
		@:native("grpc-node.max_session_memory")
		var grpc_node_max_session_memory : Bool;
	};
}