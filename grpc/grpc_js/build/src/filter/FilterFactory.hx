package grpc.grpc_js.build.src.filter;

typedef FilterFactory<T> = {
	function createFilter(callStream:grpc.grpc_js.build.src.call_stream.Call):T;
};