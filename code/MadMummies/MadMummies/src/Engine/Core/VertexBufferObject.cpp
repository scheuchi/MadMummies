#include "VertexBufferObject.h"
#include <iostream>


VertexBufferObject::VertexBufferObject(float* positionBuffer, float* normalBuffer, unsigned int* indexBuffer,
	float* uvBuffer, unsigned int vertexCount, unsigned int indexCount) : 
		m_positionBufferHandle(0), m_normalBufferHandle(0), m_uvBufferHandle(0), m_indexBufferHandle(0),
		m_positionBuffer(0), m_normalBuffer(0), m_indexBuffer(0), m_uvBuffer(0),
		m_vertexCount(0), m_indexCount(0)
{
}

VertexBufferObject::~VertexBufferObject()
{
	UnloadFromVram();
}

void VertexBufferObject::UploadToVram()
{
	if (IsUploaded()) {
		return;
	}
 
	// (1) generate vertex buffers and upload data, once for each attribute
	if (m_positionBuffer != 0) {
		glGenBuffers(1, &m_positionBufferHandle);
		glBindBuffer(GL_ARRAY_BUFFER, m_positionBufferHandle);
		glBufferData(GL_ARRAY_BUFFER, m_vertexCount * 3 * sizeof(float), m_positionBuffer, GL_STATIC_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
	}
 
	if (m_normalBuffer != 0) {
		glGenBuffers(1, &m_normalBufferHandle);
		glBindBuffer(GL_ARRAY_BUFFER, m_normalBufferHandle);
		glBufferData(GL_ARRAY_BUFFER, m_vertexCount* 3 * sizeof(float), m_normalBuffer, GL_STATIC_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
	}
 
	if (m_uvBufferHandle != 0) {
		glGenBuffers(1, &m_uvBufferHandle);
		glBindBuffer(GL_ARRAY_BUFFER, m_uvBufferHandle);
		glBufferData(GL_ARRAY_BUFFER, m_vertexCount * 2 * sizeof(float), m_uvBuffer, GL_STATIC_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
	}

	if (m_indexBuffer != 0) {
		glGenBuffers(1, &m_indexBufferHandle);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_indexBufferHandle);
		glBufferData(GL_ELEMENT_ARRAY_BUFFER, m_indexCount * sizeof(unsigned int), m_indexBuffer, GL_STATIC_DRAW);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	}

	Base::UploadToVram();
}

void VertexBufferObject::UnloadFromVram()
{
	if (IsUploaded()) {
		glDeleteBuffers(1, &m_positionBufferHandle);		
		glDeleteBuffers(1, &m_normalBufferHandle);
		glDeleteBuffers(1, &m_uvBufferHandle);
		glDeleteBuffers(1, &m_indexBufferHandle);
		Base::UnloadFromVram();
	}	
}

GLuint VertexBufferObject::GetAttributeHandle(enum Attribute attribute)
{
	GLuint attribHandle = 0;

	switch(attribute) {
		case AttribPosition0:
			attribHandle = m_normalBufferHandle;
			break;
		case AttribNormal0:
			attribHandle = m_normalBufferHandle;
			break;
		case AttribUv0:
			attribHandle = m_normalBufferHandle;
			break;		
	}

	return attribHandle;
}