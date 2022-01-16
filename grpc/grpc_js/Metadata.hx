package grpc.grpc_js;

/**
	A class for storing metadata. Keys are normalized to lowercase ASCII.
**/
@:jsRequire("@grpc/grpc-js", "Metadata") extern class Metadata {
	function new(?options:grpc.grpc_js.build.src.metadata.MetadataOptions);
	private var internalRepr : grpc.grpc_js.build.src.metadata.MetadataObject;
	private var options : Dynamic;
	/**
		Sets the given value for the given key by replacing any other values
		associated with that key. Normalizes the key.
	**/
	function set(key:String, value:MetadataValue):Void;
	/**
		Adds the given value for the given key by appending to a list of previous
		values associated with that key. Normalizes the key.
	**/
	function add(key:String, value:MetadataValue):Void;
	/**
		Removes the given key and any associated values. Normalizes the key.
	**/
	function remove(key:String):Void;
	/**
		Gets a list of all values associated with the key. Normalizes the key.
	**/
	function get(key:String):Array<MetadataValue>;
	/**
		Gets a plain object mapping each key to the first value associated with it.
		This reflects the most common way that people will want to see metadata.
	**/
	function getMap():{ };
	/**
		Clones the metadata object.
	**/
	function clone():Metadata;
	/**
		Merges all key-value pairs from a given Metadata object into this one.
		If both this object and the given object have values in the same key,
		values from the other Metadata object will be appended to this object's
		values.
	**/
	function merge(other:Metadata):Void;
	function setOptions(options:grpc.grpc_js.build.src.metadata.MetadataOptions):Void;
	function getOptions():grpc.grpc_js.build.src.metadata.MetadataOptions;
	/**
		Creates an OutgoingHttpHeaders object that can be used with the http2 API.
	**/
	function toHttp2Headers():node.http.OutgoingHttpHeaders;
	private var _getCoreRepresentation : Dynamic;
	/**
		This modifies the behavior of JSON.stringify to show an object
		representation of the metadata map.
	**/
	function toJSON():{ };
	static var prototype : Metadata;
	/**
		Returns a new Metadata object based fields in a given IncomingHttpHeaders
		object.
	**/
	static function fromHttp2Headers(headers:node.http2.IncomingHttpHeaders):Metadata;
}