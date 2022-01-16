package grpc.grpc_js;

@:jsRequire("@grpc/grpc-js", "Server") extern class Server {
	function new(?options:ChannelOptions);
	private var http2ServerList : Dynamic;
	private var handlers : Dynamic;
	private var sessions : Dynamic;
	private var started : Dynamic;
	private var options : Dynamic;
	private final channelzEnabled : Dynamic;
	private var channelzRef : Dynamic;
	private var channelzTrace : Dynamic;
	private var callTracker : Dynamic;
	private var listenerChildrenTracker : Dynamic;
	private var sessionChildrenTracker : Dynamic;
	private var getChannelzInfo : Dynamic;
	private var getChannelzSessionInfoGetter : Dynamic;
	private var trace : Dynamic;
	function addProtoService():Void;
	function addService(service:{ }, implementation:UntypedServiceImplementation):Void;
	function removeService(service:{ }):Void;
	function bind(port:String, creds:ServerCredentials):Void;
	function bindAsync(port:String, creds:ServerCredentials, callback:(error:Null<js.lib.Error>, port:Float) -> Void):Void;
	function forceShutdown():Void;
	function register<RequestType, ResponseType>(name:String, handler:grpc.grpc_js.build.src.server_call.HandleCall<RequestType, ResponseType>, serialize:Serialize<ResponseType>, deserialize:Deserialize<RequestType>, type:String):Bool;
	function unregister(name:String):Bool;
	function start():Void;
	function tryShutdown(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function addHttp2Port():Void;
	/**
		Get the channelz reference object for this server. The returned value is
		garbage if channelz is disabled for this server.
	**/
	function getChannelzRef():grpc.grpc_js.build.src.channelz.ServerRef;
	private var _setupHandlers : Dynamic;
	static var prototype : Server;
}