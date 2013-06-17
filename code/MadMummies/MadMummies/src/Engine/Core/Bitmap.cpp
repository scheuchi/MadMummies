#include "Bitmap.h"

#include <iostream>


Bitmap::Bitmap(int width, int height, unsigned char* data) : m_width(width), m_height(height), m_data(data)
{
}

Bitmap::~Bitmap()
{
}
