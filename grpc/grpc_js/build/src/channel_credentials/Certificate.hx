package grpc.grpc_js.build.src.channel_credentials;

/**
	A certificate as received by the checkServerIdentity callback.
**/
typedef Certificate = {
	/**
		The raw certificate in DER form.
	**/
	var raw : global.Buffer;
};