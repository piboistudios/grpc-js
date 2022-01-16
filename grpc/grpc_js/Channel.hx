package grpc.grpc_js;

@:jsRequire("@grpc/grpc-js", "Channel") extern class Channel {
	function new(target:String, credentials:ChannelCredentials, options:ChannelOptions);
	private final credentials : Dynamic;
	private final options : Dynamic;
	private var resolvingLoadBalancer : Dynamic;
	private var subchannelPool : Dynamic;
	private var connectivityState : Dynamic;
	private var currentPicker : Dynamic;
	/**
		Calls queued up to get a call config. Should only be populated before the
		first time the resolver returns a result, which includes the ConfigSelector.
	**/
	private var configSelectionQueue : Dynamic;
	private var pickQueue : Dynamic;
	private var connectivityStateWatchers : Dynamic;
	private var defaultAuthority : Dynamic;
	private var filterStackFactory : Dynamic;
	private var target : Dynamic;
	/**
		This timer does not do anything on its own. Its purpose is to hold the
		event loop open while there are any pending calls for the channel that
		have not yet been assigned to specific subchannels. In other words,
		the invariant is that callRefTimer is reffed if and only if pickQueue
		is non-empty.
	**/
	private var callRefTimer : Dynamic;
	private var configSelector : Dynamic;
	private final channelzEnabled : Dynamic;
	private var originalTarget : Dynamic;
	private var channelzRef : Dynamic;
	private var channelzTrace : Dynamic;
	private var callTracker : Dynamic;
	private var childrenTracker : Dynamic;
	private var getChannelzInfo : Dynamic;
	private var trace : Dynamic;
	private var callRefTimerRef : Dynamic;
	private var callRefTimerUnref : Dynamic;
	private var pushPick : Dynamic;
	/**
		Check the picker output for the given call and corresponding metadata,
		and take any relevant actions. Should not be called while iterating
		over pickQueue.
	**/
	private var tryPick : Dynamic;
	private var removeConnectivityStateWatcher : Dynamic;
	private var updateState : Dynamic;
	private var tryGetConfig : Dynamic;
	function _startCallStream(stream:grpc.grpc_js.build.src.call_stream.Http2CallStream, metadata:Metadata):Void;
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
		Get the channelz reference object for this channel. The returned value is
		garbage if channelz is disabled for this channel.
	**/
	function getChannelzRef():grpc.grpc_js.build.src.channelz.ChannelRef;
	/**
		Create a call object. Call is an opaque type that is used by the Client
		class. This function is called by the gRPC library when starting a
		request. Implementers should return an instance of Call that is returned
		from calling createCall on an instance of the provided Channel class.
	**/
	function createCall(method:String, deadline:ts.AnyOf2<Float, js.lib.Date>, host:Null<String>, parentCall:Null<grpc.grpc_js.build.src.server_call.ServerSurfaceCall>, propagateFlags:Null<Float>):grpc.grpc_js.build.src.call_stream.Call;
	static var prototype : Channel;
}