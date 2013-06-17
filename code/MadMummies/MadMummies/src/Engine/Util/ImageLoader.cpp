#include "ImageLoader.h"


#include <il/il.h>

#include <iostream>



bool ImageLoader::LoadImage(const char* filepath, int& width, int& height, unsigned char*& data)
{
	bool success = false;

	ILuint image;
	ilInit();
	ilGenImages(1, &image);
	ilBindImage(image);

	success = ilLoadImage(filepath);
	_ASSERT(success == true);

	int tmp = 0;
	tmp = ilGetInteger(IL_IMAGE_FORMAT);
	tmp = ilGetInteger(IL_IMAGE_TYPE);

	width = ilGetInteger(IL_IMAGE_WIDTH);
	height = ilGetInteger(IL_IMAGE_HEIGHT);
	data = new unsigned char[width * height * 3];
	ilCopyPixels(0, 0, 0, width, height, 1, IL_RGB, IL_UNSIGNED_BYTE, data);
	
	return success;
}