package grpc.grpc_js;

typedef Call = ts.AnyOf4<grpc.grpc_js.build.src.call.SurfaceCall, ClientReadableStream<Dynamic>, ClientWritableStream<Dynamic>, ClientDuplexStream<Dynamic, Dynamic>>;