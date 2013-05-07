#pragma once

#include "glew.h"

#include <iostream>

class ImageLoader
{
public:
	static bool LoadImage(const char* filepath, int& width, int& height, unsigned char*& data);

private:
	ImageLoader() { }
	~ImageLoader() { }
};