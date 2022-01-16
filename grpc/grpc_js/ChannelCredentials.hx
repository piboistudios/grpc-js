package grpc.grpc_js;

/**
	A class that contains credentials for communicating over a channel, as well
	as a set of per-call credentials, which are applied to every method call made
	over a channel initialized with an instance of this class.
**/
@:jsRequire("@grpc/grpc-js", "ChannelCredentials") extern class ChannelCredentials {
	private function new(?callCredentials:CallCredentials);
	private var callCredentials : CallCredentials;
	/**
		Returns a copy of this object with the included set of per-call credentials
		expanded to include callCredentials.
	**/
	function compose(callCredentials:CallCredentials):ChannelCredentials;
	/**
		Gets the set of per-call credentials associated with this instance.
	**/
	function _getCallCredentials():CallCredentials;
	/**
		Gets a SecureContext object generated from input parameters if this
		instance was created with createSsl, or null if this instance was created
		with createInsecure.
	**/
	function _getConnectionOptions():Null<node.tls.ConnectionOptions>;
	/**
		Indicates whether this credentials object creates a secure channel.
	**/
	function _isSecure():Bool;
	/**
		Check whether two channel credentials objects are equal. Two secure
		credentials are equal if they were constructed with the same parameters.
	**/
	function _equals(other:ChannelCredentials):Bool;
	static var prototype : ChannelCredentials;
	/**
		Return a new ChannelCredentials instance with a given set of credentials.
		The resulting instance can be used to construct a Channel that communicates
		over TLS.
	**/
	static function createSsl(?rootCerts:global.Buffer, ?privateKey:global.Buffer, ?certChain:global.Buffer, ?verifyOptions:grpc.grpc_js.build.src.channel_credentials.VerifyOptions):ChannelCredentials;
	/**
		Return a new ChannelCredentials instance with no credentials.
	**/
	static function createInsecure():ChannelCredentials;
}