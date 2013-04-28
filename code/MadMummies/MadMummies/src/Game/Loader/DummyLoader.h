#pragma once

#include <string>

#include "Engine/Loader/Loader.h"

class Scene;

class DummyLoader : public Loader
{
public:
	DummyLoader();
	virtual ~DummyLoader();

	virtual Scene* LoadScene(std::string sceneName);
};