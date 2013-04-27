#pragma once

#include "glew.h"

#include <iostream>

class Util
{
public:
	static void CheckGlError();

	static void DebugInit();
	static void DebugRegisterCallback();

};