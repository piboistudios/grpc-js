package grpc.grpc_js;

typedef HandleServerStreamingCall<RequestType, ResponseType> = (call:ServerWritableStream<RequestType, ResponseType>) -> Void;