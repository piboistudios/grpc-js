package grpc.grpc_js.build.src.channel_credentials;

/**
	A callback that will receive the expected hostname and presented peer
	certificate as parameters. The callback should return an error to
	indicate that the presented certificate is considered invalid and
	otherwise returned undefined.
**/
typedef CheckServerIdentityCallback = (hostname:String, cert:Certificate) -> Null<js.lib.Error>;