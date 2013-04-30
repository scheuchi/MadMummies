#pragma once

#include "GraphicsResource.h"
#include "Bitmap.h"

#include "glew.h"


class Texture : public GraphicsResource
{	
	typedef GraphicsResource Base;

public:
	Texture();
	virtual ~Texture();

	virtual void UploadToVram();
	virtual void UnloadFromVram();
	virtual void Activate();

	void SetBitmap(Bitmap* bitmap) { m_bitmap = bitmap; }
	Bitmap* GetBitmap() { return m_bitmap; }

	void SetTextureUnit(int unit) { m_unit = unit; }
	int GetTextureUnit() { return m_unit; }

private:
	Bitmap* m_bitmap;
	GLuint m_handle;
	int m_unit;
};