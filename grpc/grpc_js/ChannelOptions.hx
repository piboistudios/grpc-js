package grpc.grpc_js;

/**
	An interface that contains options used when initializing a Channel instance.
**/
typedef ChannelOptions = {
	@:optional
	@:native("grpc.ssl_target_name_override")
	var grpc_ssl_target_name_override : String;
	@:optional
	@:native("grpc.primary_user_agent")
	var grpc_primary_user_agent : String;
	@:optional
	@:native("grpc.secondary_user_agent")
	var grpc_secondary_user_agent : String;
	@:optional
	@:native("grpc.default_authority")
	var grpc_default_authority : String;
	@:optional
	@:native("grpc.keepalive_time_ms")
	var grpc_keepalive_time_ms : Float;
	@:optional
	@:native("grpc.keepalive_timeout_ms")
	var grpc_keepalive_timeout_ms : Float;
	@:optional
	@:native("grpc.keepalive_permit_without_calls")
	var grpc_keepalive_permit_without_calls : Float;
	@:optional
	@:native("grpc.service_config")
	var grpc_service_config : String;
	@:optional
	@:native("grpc.max_concurrent_streams")
	var grpc_max_concurrent_streams : Float;
	@:optional
	@:native("grpc.initial_reconnect_backoff_ms")
	var grpc_initial_reconnect_backoff_ms : Float;
	@:optional
	@:native("grpc.max_reconnect_backoff_ms")
	var grpc_max_reconnect_backoff_ms : Float;
	@:optional
	@:native("grpc.use_local_subchannel_pool")
	var grpc_use_local_subchannel_pool : Float;
	@:optional
	@:native("grpc.max_send_message_length")
	var grpc_max_send_message_length : Float;
	@:optional
	@:native("grpc.max_receive_message_length")
	var grpc_max_receive_message_length : Float;
	@:optional
	@:native("grpc.enable_http_proxy")
	var grpc_enable_http_proxy : Float;
	@:optional
	@:native("grpc.http_connect_target")
	var grpc_http_connect_target : String;
	@:optional
	@:native("grpc.http_connect_creds")
	var grpc_http_connect_creds : String;
	@:optional
	@:native("grpc.enable_channelz")
	var grpc_enable_channelz : Float;
	@:optional
	@:native("grpc-node.max_session_memory")
	var grpc_node_max_session_memory : Float;
};