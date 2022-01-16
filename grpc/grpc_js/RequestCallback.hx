package grpc.grpc_js;

typedef RequestCallback<ResponseType> = ts.AnyOf2<(err:Null<ServiceError>) -> Void, (err:Null<ServiceError>, value:ResponseType) -> Void>;