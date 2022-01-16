package grpc.grpc_js.build.src.call_stream;

@:enum extern abstract WriteFlags(Int) from Int to Int {
	var BufferHint = 1;
	var NoCompress = 2;
	var WriteThrough = 4;
}