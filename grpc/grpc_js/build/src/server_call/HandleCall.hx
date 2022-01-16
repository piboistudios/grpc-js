package grpc.grpc_js.build.src.server_call;

typedef HandleCall<RequestType, ResponseType> = ts.AnyOf4<grpc.grpc_js.HandleUnaryCall<RequestType, ResponseType>, grpc.grpc_js.HandleClientStreamingCall<RequestType, ResponseType>, grpc.grpc_js.HandleServerStreamingCall<RequestType, ResponseType>, grpc.grpc_js.HandleBidiStreamingCall<RequestType, ResponseType>>;