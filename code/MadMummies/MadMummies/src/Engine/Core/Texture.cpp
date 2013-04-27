#include "Texture.h"

#include "glew.h"

Texture::Texture() : m_bitmap(0), m_handle(0), m_unit(0)
{
}

Texture::~Texture()
{
}

void Texture::UploadToVram()
{
	if (!IsUploaded()) { 
		// (1) generate a handle
		glGenTextures(1, &m_handle);
 
		// (2) activate a texture unit and bind the texture to it
		glActiveTexture(GL_TEXTURE0 + m_unit);
		glBindTexture(GL_TEXTURE_2D, m_handle);
 
		// (3) upload data and generate mip-maps
		glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, m_bitmap->GetWidth(), m_bitmap->GetHeight(), 
			0, GL_RGB, GL_UNSIGNED_BYTE, m_bitmap->GetData());
		glGenerateMipmap(GL_TEXTURE_2D);
 
		// (4) set texture parameter
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	
		Base::UploadToVram();
	}	
}

void Texture::UnloadFromVram()
{
	if (IsUploaded()) {
		glDeleteTextures(1, &m_handle);
		Base::UnloadFromVram();
	}	
}

void Texture::Activate()
{
	// bind texture
	glActiveTexture(GL_TEXTURE0 + m_unit);
	glBindTexture(GL_TEXTURE_2D, m_handle); 
	Base::Activate();
}