package grpc.grpc_js;

typedef HandleUnaryCall<RequestType, ResponseType> = (call:ServerUnaryCall<RequestType, ResponseType>, callback:SendUnaryData<ResponseType>) -> Void;