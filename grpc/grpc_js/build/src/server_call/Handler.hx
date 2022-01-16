package grpc.grpc_js.build.src.server_call;

typedef Handler<RequestType, ResponseType> = ts.AnyOf4<UnaryHandler<RequestType, ResponseType>, ClientStreamingHandler<RequestType, ResponseType>, ServerStreamingHandler<RequestType, ResponseType>, BidiStreamingHandler<RequestType, ResponseType>>;