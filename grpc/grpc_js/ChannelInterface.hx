package grpc.grpc_js;

/**
	An interface that represents a communication channel to a server specified
	by a given address.
**/
typedef ChannelInterface = {
	/**
		Close the channel. This has the same functionality as the existing
		grpc.Client.prototype.close
	**/
	function close():Void;
	/**
		Return the target that this channel connects to
	**/
	function getTarget():String;
	/**
		Get the channel's current connectivity state. This method is here mainly
		because it is in the existing internal Channel class, and there isn't
		another good place to put it.
	**/
	function getConnectivityState(tryToConnect:Bool):ConnectivityState;
	/**
		Watch for connectivity state changes. This is also here mainly because
		it is in the existing external Channel class.
	**/
	function watchConnectivityState(currentState:ConnectivityState, deadline:ts.AnyOf2<Float, js.lib.Date>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	/**
		Get the channelz reference object for this channel. A request to the
		channelz service for the id in this object will provide information
		about this channel.
	**/
	function getChannelzRef():grpc.grpc_js.build.src.channelz.ChannelRef;
	/**
		Create a call object. Call is an opaque type that is used by the Client
		class. This function is called by the gRPC library when starting a
		request. Implementers should return an instance of Call that is returned
		from calling createCall on an instance of the provided Channel class.
	**/
	function createCall(method:String, deadline:ts.AnyOf2<Float, js.lib.Date>, host:Null<String>, parentCall:Null<grpc.grpc_js.build.src.server_call.ServerSurfaceCall>, propagateFlags:Null<Float>):grpc.grpc_js.build.src.call_stream.Call;
};