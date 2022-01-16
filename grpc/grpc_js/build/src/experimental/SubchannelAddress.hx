package grpc.grpc_js.build.src.experimental;

/**
	This represents a single backend address to connect to. This interface is a
	subset of net.SocketConnectOpts, i.e. the options described at
	https://nodejs.org/api/net.html#net_socket_connect_options_connectlistener.
	Those are in turn a subset of the options that can be passed to http2.connect.
**/
typedef SubchannelAddress = ts.AnyOf2<grpc.grpc_js.build.src.subchannel_address.TcpSubchannelAddress, grpc.grpc_js.build.src.subchannel_address.IpcSubchannelAddress>;