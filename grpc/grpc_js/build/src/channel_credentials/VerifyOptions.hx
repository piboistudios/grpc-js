package grpc.grpc_js.build.src.channel_credentials;

/**
	Additional peer verification options that can be set when creating
	SSL credentials.
**/
typedef VerifyOptions = {
	/**
		If set, this callback will be invoked after the usual hostname verification
		has been performed on the peer certificate.
	**/
	@:optional
	dynamic function checkServerIdentity(hostname:String, cert:Certificate):Null<js.lib.Error>;
};