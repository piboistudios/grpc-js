package grpc.grpc_js.build.src.call_credentials;

typedef OldOAuth2Client = {
	dynamic function getRequestMetadata(url:String, callback:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, headers:{ }) -> Void>):Void;
};