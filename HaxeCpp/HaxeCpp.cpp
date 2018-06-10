// This is the main DLL file.

#include "stdafx.h"

#include "HaxeCpp.h"

void CPP_ShowMessage(const char *message)
{
	printf("%s\n", message);
}

CppClass* CPP_CreateObject()
{
	return new CppClass();
}

