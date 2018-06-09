package ;

//https://gist.github.com/nadako/c8aec20c2a7751348f91

import cpp.ConstCharStar;

@:include("./../../HaxeCpp/HaxeCpp.h")
@:buildXml('<target id="haxe"><lib name="../../../HaxeCpp/Debug/HaxeCpp.lib"/></target>')
extern class CppCall
{
	@:native("CPP_ShowMessage")
	static public function showMessage(message:ConstCharStar):Void;
}
