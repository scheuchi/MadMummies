#pragma once

#include <string>

#include "Engine/Loader/Loader.h"

class Scene;

class FileLoader : public Loader
{
public:
	FileLoader();
	virtual ~FileLoader();

	virtual Scene* LoadScene(std::string sceneName);
};