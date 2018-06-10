#include "StdAfx.h"
#include "CppClass.h"


CppClass::CppClass(void)
{
	printf("construct cpp object\n");
}

CppClass::~CppClass(void)
{
	printf("destroy cpp object\n");
}

void CppClass::showMessage(const char *message)
{
	printf("%s\n", message);
}
