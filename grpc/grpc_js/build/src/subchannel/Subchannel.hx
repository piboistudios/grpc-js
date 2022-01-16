package grpc.grpc_js.build.src.subchannel;

@:jsRequire("@grpc/grpc-js/build/src/subchannel", "Subchannel") extern class Subchannel {
	/**
		A class representing a connection to a single backend.
	**/
	function new(channelTarget:grpc.grpc_js.build.src.uri_parser.GrpcUri, subchannelAddress:grpc.grpc_js.build.src.experimental.SubchannelAddress, options:grpc.grpc_js.ChannelOptions, credentials:grpc.grpc_js.ChannelCredentials);
	private var channelTarget : Dynamic;
	private var subchannelAddress : Dynamic;
	private var options : Dynamic;
	private var credentials : Dynamic;
	/**
		The subchannel's current connectivity state. Invariant: `session` === `null`
		if and only if `connectivityState` is IDLE or TRANSIENT_FAILURE.
	**/
	private var connectivityState : Dynamic;
	/**
		The underlying http2 session used to make requests.
	**/
	private var session : Dynamic;
	/**
		Indicates that the subchannel should transition from TRANSIENT_FAILURE to
		CONNECTING instead of IDLE when the backoff timeout ends.
	**/
	private var continueConnecting : Dynamic;
	/**
		A list of listener functions that will be called whenever the connectivity
		state changes. Will be modified by `addConnectivityStateListener` and
		`removeConnectivityStateListener`
	**/
	private var stateListeners : Dynamic;
	/**
		A list of listener functions that will be called when the underlying
		socket disconnects. Used for ending active calls with an UNAVAILABLE
		status.
	**/
	private var disconnectListeners : Dynamic;
	private var backoffTimeout : Dynamic;
	/**
		The complete user agent string constructed using channel args.
	**/
	private var userAgent : Dynamic;
	/**
		The amount of time in between sending pings
	**/
	private var keepaliveTimeMs : Dynamic;
	/**
		The amount of time to wait for an acknowledgement after sending a ping
	**/
	private var keepaliveTimeoutMs : Dynamic;
	/**
		Timer reference for timeout that indicates when to send the next ping
	**/
	private var keepaliveIntervalId : Dynamic;
	/**
		Timer reference tracking when the most recent ping will be considered lost
	**/
	private var keepaliveTimeoutId : Dynamic;
	/**
		Indicates whether keepalive pings should be sent without any active calls
	**/
	private var keepaliveWithoutCalls : Dynamic;
	/**
		Tracks calls with references to this subchannel
	**/
	private var callRefcount : Dynamic;
	/**
		Tracks channels and subchannel pools with references to this subchannel
	**/
	private var refcount : Dynamic;
	/**
		A string representation of the subchannel address, for logging/tracing
	**/
	private var subchannelAddressString : Dynamic;
	private final channelzEnabled : Dynamic;
	private var channelzRef : Dynamic;
	private var channelzTrace : Dynamic;
	private var callTracker : Dynamic;
	private var childrenTracker : Dynamic;
	private var channelzSocketRef : Dynamic;
	/**
		Name of the remote server, if it is not the same as the subchannel
		address, i.e. if connecting through an HTTP CONNECT proxy.
	**/
	private var remoteName : Dynamic;
	private var streamTracker : Dynamic;
	private var keepalivesSent : Dynamic;
	private var messagesSent : Dynamic;
	private var messagesReceived : Dynamic;
	private var lastMessageSentTimestamp : Dynamic;
	private var lastMessageReceivedTimestamp : Dynamic;
	private var getChannelzInfo : Dynamic;
	private var getChannelzSocketInfo : Dynamic;
	private var resetChannelzSocketInfo : Dynamic;
	private var trace : Dynamic;
	private var refTrace : Dynamic;
	private var handleBackoffTimer : Dynamic;
	/**
		Start a backoff timer with the current nextBackoff timeout
	**/
	private var startBackoff : Dynamic;
	private var stopBackoff : Dynamic;
	private var sendPing : Dynamic;
	private var startKeepalivePings : Dynamic;
	private var stopKeepalivePings : Dynamic;
	private var createSession : Dynamic;
	private var startConnectingInternal : Dynamic;
	/**
		Initiate a state transition from any element of oldStates to the new
		state. If the current connectivityState is not in oldStates, do nothing.
	**/
	private var transitionToState : Dynamic;
	/**
		Check if the subchannel associated with zero calls and with zero channels.
		If so, shut it down.
	**/
	private var checkBothRefcounts : Dynamic;
	function callRef():Void;
	function callUnref():Void;
	function ref():Void;
	function unref():Void;
	function unrefIfOneRef():Bool;
	/**
		Start a stream on the current session with the given `metadata` as headers
		and then attach it to the `callStream`. Must only be called if the
		subchannel's current connectivity state is READY.
	**/
	function startCallStream(metadata:grpc.grpc_js.Metadata, callStream:grpc.grpc_js.build.src.call_stream.Http2CallStream, extraFilters:Array<grpc.grpc_js.build.src.filter.Filter>):Void;
	/**
		If the subchannel is currently IDLE, start connecting and switch to the
		CONNECTING state. If the subchannel is current in TRANSIENT_FAILURE,
		the next time it would transition to IDLE, start connecting again instead.
		Otherwise, do nothing.
	**/
	function startConnecting():Void;
	/**
		Get the subchannel's current connectivity state.
	**/
	function getConnectivityState():grpc.grpc_js.ConnectivityState;
	/**
		Add a listener function to be called whenever the subchannel's
		connectivity state changes.
	**/
	function addConnectivityStateListener(listener:ConnectivityStateListener):Void;
	/**
		Remove a listener previously added with `addConnectivityStateListener`
	**/
	function removeConnectivityStateListener(listener:ConnectivityStateListener):Void;
	function addDisconnectListener(listener:() -> Void):Void;
	function removeDisconnectListener(listener:() -> Void):Void;
	/**
		Reset the backoff timeout, and immediately start connecting if in backoff.
	**/
	function resetBackoff():Void;
	function getAddress():String;
	function getChannelzRef():grpc.grpc_js.build.src.channelz.SubchannelRef;
	static var prototype : Subchannel;
}