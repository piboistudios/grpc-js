package grpc.grpc_js;

typedef HandleBidiStreamingCall<RequestType, ResponseType> = (call:ServerDuplexStream<RequestType, ResponseType>) -> Void;