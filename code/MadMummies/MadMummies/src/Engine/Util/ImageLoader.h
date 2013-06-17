#pragma once

class ImageLoader
{
public:
	static bool LoadImage(const char* filepath, int& width, int& height, unsigned char*& data);

private:
	ImageLoader() { }
	~ImageLoader() { }
};