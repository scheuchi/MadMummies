#pragma once

#include <string>

#include "Engine/Core/Scene.h"

class Loader
{
public:
	Loader(void);
	virtual ~Loader(void);

	virtual Scene* LoadScene(std::string sceneName) = 0;
};