package grpc.grpc_js;

/**
	A class that represents a generic method of adding authentication-related
	metadata on a per-request basis.
**/
@:jsRequire("@grpc/grpc-js", "CallCredentials") extern class CallCredentials {
	function new();
	/**
		Asynchronously generates a new Metadata object.
	**/
	function generateMetadata(options:grpc.grpc_js.build.src.call_credentials.CallMetadataOptions):js.lib.Promise<Metadata>;
	/**
		Creates a new CallCredentials object from properties of both this and
		another CallCredentials object. This object's metadata generator will be
		called first.
	**/
	function compose(callCredentials:CallCredentials):CallCredentials;
	/**
		Check whether two call credentials objects are equal. Separate
		SingleCallCredentials with identical metadata generator functions are
		equal.
	**/
	function _equals(other:CallCredentials):Bool;
	static var prototype : CallCredentials;
	/**
		Creates a new CallCredentials object from a given function that generates
		Metadata objects.
	**/
	static function createFromMetadataGenerator(metadataGenerator:grpc.grpc_js.build.src.call_credentials.CallMetadataGenerator):CallCredentials;
	/**
		Create a gRPC credential from a Google credential object.
	**/
	static function createFromGoogleCredential(googleCredentials:OAuth2Client):CallCredentials;
	static function createEmpty():CallCredentials;
}