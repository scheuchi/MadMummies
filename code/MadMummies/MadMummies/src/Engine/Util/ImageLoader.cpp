#include "ImageLoader.h"


#include <il/il.h>


bool ImageLoader::LoadImage(const char* filepath, int& width, int& height, unsigned char*& data)
{
	bool success = false;

	ILuint image;
	ilGenImages(1, &image);
	ilBindImage(image);

	const size_t cSize = strlen(filepath);
    wchar_t* wFilepath = new wchar_t[cSize + 1];

	size_t returnSize = 0;
    mbstowcs_s(&returnSize, wFilepath, cSize + 1, filepath, cSize);

	success = ilLoadImage(wFilepath) == 0;

	int tmp = 0;
	tmp = ilGetInteger(IL_IMAGE_FORMAT);
	tmp = ilGetInteger(IL_IMAGE_TYPE);

	width = ilGetInteger(IL_IMAGE_WIDTH);
	height = ilGetInteger(IL_IMAGE_HEIGHT);
	data = new unsigned char[width * height * 3];
	ilCopyPixels(0, 0, 0, width, height, 1, IL_RGB, IL_UNSIGNED_BYTE, data);
	
	return success;
}