package unit.hxcpp_issues;

class Issue352 extends Test {
	@:keep
	static function onSample( buf : cpp.Pointer<cpp.Float32>, len : Int ) {
		var data : haxe.io.BytesData = [];
		cpp.NativeArray.setUnmanagedData(data, buf.reinterpret(), len<<2);
		foo( haxe.io.Float32Array.fromBytes(haxe.io.Bytes.ofData(data)) );
	}

	static function foo(d) { }
}