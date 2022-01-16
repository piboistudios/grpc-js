package grpc.grpc_js.build.src.filter_stack;

@:jsRequire("@grpc/grpc-js/build/src/filter-stack", "FilterStackFactory") extern class FilterStackFactory {
	function new(factories:Array<grpc.grpc_js.build.src.filter.FilterFactory<grpc.grpc_js.build.src.filter.Filter>>);
	private final factories : Dynamic;
	function push(filterFactories:Array<grpc.grpc_js.build.src.filter.FilterFactory<grpc.grpc_js.build.src.filter.Filter>>):Void;
	function createFilter(callStream:grpc.grpc_js.build.src.call_stream.Call):FilterStack;
	static var prototype : FilterStackFactory;
}