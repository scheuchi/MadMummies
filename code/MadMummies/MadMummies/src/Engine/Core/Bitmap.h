#pragma once

#include <string>

class Bitmap
{	

public:
	Bitmap(std::string m_path);
	virtual ~Bitmap();

	std::string GetPath() { return m_path; }
	unsigned char* GetData();

	int GetWidth() { return m_width; }
	void SetWidth(int width) { m_width = width; }

	int GetHeight() { return m_height; }
	void SetHeight(int height) { m_height = height; }

private:
	unsigned char* LoadBitmap();

	std::string m_path;
	unsigned char* m_data;
	int m_width;
	int m_height;
};