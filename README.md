# CPP to HAXE

This example demonstrates how to integrate c++ code into haxe and build native application

## Haxe application main class

```haxe
package ;
import CppCall.CppClass;
class Main
{
	public static function main():Void
	{
		trace("Hello world!");

		CppCall.showMessage("Hello from CPP!");

		var obj:CppClass = CppCall.createObject();
		obj.showMessage("Hello from CPP object!");
	}
}
```

## Haxe integration code

```haxe
package ;

import cpp.ConstCharStar;

@:include("./../../HaxeCpp/HaxeCpp.h")
@:buildXml('<target id="haxe"><lib name="../../../HaxeCpp/Debug/HaxeCpp.lib"/></target>')
extern class CppCall
{
	@:native("CPP_ShowMessage")
	static public function showMessage(message:ConstCharStar):Void;

	@:native("CPP_CreateObject")
	static public function createObject():CppClass;
}

@:native("::cpp::Reference<CppClass>")
extern class CppClass
{
	public function showMessage(message:ConstCharStar):Void;
}

```

## CPP code

```cpp
// HaxeCpp.h
#ifndef _HAXECPP_H_
#define _HAXECPP_H_

#include "CppClass.h"

void CPP_ShowMessage(const char *message);
CppClass* CPP_CreateObject();

#endif

//CppClass.h
#ifndef _CPP_CLASS_
#define _CPP_CLASS_

class CppClass
{
public:
	CppClass(void);
	~CppClass(void);

	void showMessage(const char *message);
};

#endif
```

### References:
[SDL to Haxe](https://gist.github.com/nadako/c8aec20c2a7751348f91)
