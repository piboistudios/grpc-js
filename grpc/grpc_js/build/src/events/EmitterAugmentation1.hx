package grpc.grpc_js.build.src.events;

typedef EmitterAugmentation1<Name, Arg> = {
	function addListener(event:Name, listener:(arg1:Arg) -> Void):EmitterAugmentation1<Name, Arg>;
	function emit(event:Name, arg1:Arg):Bool;
	function on(event:Name, listener:(arg1:Arg) -> Void):EmitterAugmentation1<Name, Arg>;
	function once(event:Name, listener:(arg1:Arg) -> Void):EmitterAugmentation1<Name, Arg>;
	function prependListener(event:Name, listener:(arg1:Arg) -> Void):EmitterAugmentation1<Name, Arg>;
	function prependOnceListener(event:Name, listener:(arg1:Arg) -> Void):EmitterAugmentation1<Name, Arg>;
	function removeListener(event:Name, listener:(arg1:Arg) -> Void):EmitterAugmentation1<Name, Arg>;
};