package grpc.grpc_js.build.src.generated.grpc.channelz.v1.channelz;

/**
	Channelz is a service exposed by gRPC servers that provides detailed debug
	information.
**/
typedef ChannelzClient = {
	/**
		Returns a single Channel, or else a NOT_FOUND code.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function GetChannel(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Returns a single Server, or else a NOT_FOUND code.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function GetServer(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Returns a single Server, or else a NOT_FOUND code.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function getServer(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Gets all server sockets that exist in the process.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function GetServerSockets(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Gets all server sockets that exist in the process.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function getServerSockets(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Gets all servers that exist in the process.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function GetServers(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Gets all servers that exist in the process.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function getServers(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Returns a single Socket or else a NOT_FOUND code.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function GetSocket(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Returns a single Socket or else a NOT_FOUND code.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function getSocket(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Returns a single Subchannel, or else a NOT_FOUND code.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function GetSubchannel(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Returns a single Subchannel, or else a NOT_FOUND code.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function getSubchannel(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Gets all root channels (i.e. channels the application has directly
		created). This does not include subchannels nor non-top level channels.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function GetTopChannels(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
	/**
		Gets all root channels (i.e. channels the application has directly
		created). This does not include subchannels nor non-top level channels.
	**/
	@:overload(function(argument:Dynamic, metadata:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, options:Dynamic, callback:Dynamic):Dynamic { })
	@:overload(function(argument:Dynamic, callback:Dynamic):Dynamic { })
	function getTopChannels(argument:Dynamic, metadata:Dynamic, options:Dynamic, callback:Dynamic):Dynamic;
};