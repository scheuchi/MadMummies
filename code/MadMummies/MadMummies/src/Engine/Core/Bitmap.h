#pragma once

#include <string>

class Bitmap
{	

public:
	Bitmap(int width, int height, unsigned char* data);
	virtual ~Bitmap();

	unsigned char* GetData() { return m_data; }
	int GetWidth() { return m_width; }
	int GetHeight() { return m_height; }

private:
	unsigned char* m_data;
	int m_width;
	int m_height;
};