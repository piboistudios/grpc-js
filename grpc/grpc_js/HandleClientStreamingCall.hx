package grpc.grpc_js;

typedef HandleClientStreamingCall<RequestType, ResponseType> = (call:ServerReadableStream<RequestType, ResponseType>, callback:SendUnaryData<ResponseType>) -> Void;