#include "VertexBufferObject.h"
#include <iostream>


VertexBufferObject::VertexBufferObject(
		float* positionBuffer, float* normalBuffer, float* uvBuffer, 
		unsigned int* indexBuffer, unsigned int vertexCount, unsigned int indexCount) : 
		m_positionBufferHandle(-1), m_normalBufferHandle(-1), m_uvBufferHandle(-1), m_indexBufferHandle(-1),
		m_positionBuffer(positionBuffer), m_normalBuffer(normalBuffer), m_uvBuffer(uvBuffer), m_indexBuffer(indexBuffer),
		m_vertexCount(vertexCount), m_indexCount(indexCount)
{
	if (((m_indexBuffer == 0) && (m_indexCount != 0)) || ((m_indexBuffer != 0) && (m_indexCount == 0))) {
		std::cout << "Invalid initialization of indexed vertex buffer." << std::endl;
		system("PAUSE");
		exit(-1);
	}
	if (((m_positionBuffer == 0) && (m_vertexCount != 0)) || ((m_positionBuffer != 0) && (m_vertexCount == 0))) {
		std::cout << "Invalid initialization of position vertex buffer." << std::endl;
		system("PAUSE");
		exit(-1);
	}
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

	if (m_positionBuffer != 0) {
		glGenBuffers(1, (GLuint*)&m_positionBufferHandle);
		glBindBuffer(GL_ARRAY_BUFFER, m_positionBufferHandle);
		glBufferData(GL_ARRAY_BUFFER, m_vertexCount * 3 * sizeof(float), m_positionBuffer, GL_STATIC_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
	}
 
	if (m_normalBuffer != 0) {
		glGenBuffers(1, (GLuint*)&m_normalBufferHandle);
		glBindBuffer(GL_ARRAY_BUFFER, m_normalBufferHandle);
		glBufferData(GL_ARRAY_BUFFER, m_vertexCount* 3 * sizeof(float), m_normalBuffer, GL_STATIC_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
	}
 
	if (m_uvBuffer != 0) {
		glGenBuffers(1, (GLuint*)&m_uvBufferHandle);
		glBindBuffer(GL_ARRAY_BUFFER, m_uvBufferHandle);
		glBufferData(GL_ARRAY_BUFFER, m_vertexCount * 2 * sizeof(float), m_uvBuffer, GL_STATIC_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
	}

	if (m_indexBuffer != 0) {
		glGenBuffers(1, (GLuint*)&m_indexBufferHandle);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_indexBufferHandle);
		glBufferData(GL_ELEMENT_ARRAY_BUFFER, m_indexCount * sizeof(unsigned int), m_indexBuffer, GL_STATIC_DRAW);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	}

	Base::UploadToVram();
}

void VertexBufferObject::UnloadFromVram()
{
	if (IsUploaded()) {
		if (m_positionBufferHandle != -1) {
			glDeleteBuffers(1, (GLuint*)&m_positionBufferHandle);	
		}
		if (m_normalBufferHandle != -1) {
			glDeleteBuffers(1, (GLuint*)&m_normalBufferHandle);
		}
		if (m_uvBufferHandle != -1) {
			glDeleteBuffers(1, (GLuint*)&m_uvBufferHandle);
		}
		if (m_indexBufferHandle != -1) {
			glDeleteBuffers(1, (GLuint*)&m_indexBufferHandle);
		}
		Base::UnloadFromVram();
	}	
}

bool VertexBufferObject::GetAttributeHandle(enum Attribute attribute, GLuint& handle)
{
	int attribHandle = -1;

	switch(attribute) {
		case AttribPosition0:
			attribHandle = m_positionBufferHandle;
			break;
		case AttribNormal0:
			attribHandle = m_normalBufferHandle;
			break;
		case AttribUv0:
			attribHandle = m_uvBufferHandle;
			break;		
	}
	if (attribHandle != -1) {
		handle = attribHandle;
		return true;
	} else {
		return false;
	}
}

bool VertexBufferObject::GetIndexBufferHandle(GLuint& handle)
{
	if (m_indexBufferHandle != -1) {
		handle = m_indexBufferHandle;
		return true;
	} else {
		return false;
	}
}