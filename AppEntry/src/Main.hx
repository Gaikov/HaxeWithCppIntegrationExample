package ;
import CppCall.CppClass;
class Main
{
	public static function main():Void
	{
		trace("Hello world");

		CppCall.showMessage("Hello from CPP!");

		var obj:CppClass = CppCall.createObject();
		obj.showMessage("Hello from CPP object!");

		obj = null;
	}
}
