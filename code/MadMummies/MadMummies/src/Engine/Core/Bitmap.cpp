#include "Bitmap.h"

#include <iostream>


Bitmap::Bitmap(std::string path) : m_path(path), m_data(0)
{
}

Bitmap::~Bitmap()
{
}

unsigned char* Bitmap::GetData()
{
	if (m_data != 0) {
		m_data = LoadBitmap();
	}
	return m_data;	
}

unsigned char* Bitmap::LoadBitmap()
{
	return 0;
}