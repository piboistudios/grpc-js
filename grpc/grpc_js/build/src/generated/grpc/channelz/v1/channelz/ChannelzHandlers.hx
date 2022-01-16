package grpc.grpc_js.build.src.generated.grpc.channelz.v1.channelz;

/**
	Channelz is a service exposed by gRPC servers that provides detailed debug
	information.
**/
typedef ChannelzHandlers = {
	/**
		Returns a single Channel, or else a NOT_FOUND code.
	**/
	var GetChannel : Dynamic;
	/**
		Returns a single Server, or else a NOT_FOUND code.
	**/
	var GetServer : Dynamic;
	/**
		Gets all server sockets that exist in the process.
	**/
	var GetServerSockets : Dynamic;
	/**
		Gets all servers that exist in the process.
	**/
	var GetServers : Dynamic;
	/**
		Returns a single Socket or else a NOT_FOUND code.
	**/
	var GetSocket : Dynamic;
	/**
		Returns a single Subchannel, or else a NOT_FOUND code.
	**/
	var GetSubchannel : Dynamic;
	/**
		Gets all root channels (i.e. channels the application has directly
		created). This does not include subchannels nor non-top level channels.
	**/
	var GetTopChannels : Dynamic;
};