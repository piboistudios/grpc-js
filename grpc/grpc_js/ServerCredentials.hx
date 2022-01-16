package grpc.grpc_js;

@:jsRequire("@grpc/grpc-js", "ServerCredentials") extern class ServerCredentials {
	function new();
	function _isSecure():Bool;
	function _getSettings():Null<node.http2.SecureServerOptions>;
	static var prototype : ServerCredentials;
	static function createInsecure():ServerCredentials;
	static function createSsl(rootCerts:Null<global.Buffer>, keyCertPairs:Array<KeyCertPair>, ?checkClientCertificate:Bool):ServerCredentials;
}