package grpc.grpc_js.build.src.call_credentials;

typedef CallMetadataGenerator = (options:CallMetadataOptions, cb:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, metadata:grpc.grpc_js.Metadata) -> Void>) -> Void;