#pragma once

#include "GraphicsResource.h"

#include "glew.h"


class VertexBufferObject : public GraphicsResource
{	
	typedef GraphicsResource Base;

public:

	enum Attribute {
		AttribPosition0,
		AttribPosition1,
		AttribPosition2,
		AttribPosition3,
		AttribNormal0,
		AttribNormal1,
		AttribNormal2,
		AttribNormal3,
		AttribUv0,
		AttribUv1,
		AttribUv2,
		AttribUv3
	};

	VertexBufferObject(float* positionBuffer, float* normalBuffer, unsigned int* indexBuffer,
		float* uvBuffer, unsigned int vertexCount, unsigned int indexCount);
	virtual ~VertexBufferObject();

	virtual void UploadToVram();
	virtual void UnloadFromVram();

	GLuint GetAttributeHandle(enum Attribute attribute);
	GLuint GetIndexBufferHandle() { return m_indexBufferHandle; }

	unsigned int GetVertexIndexCount() { return m_indexCount; }

private:
	GLuint m_positionBufferHandle;
	GLuint m_normalBufferHandle;
	GLuint m_uvBufferHandle;
	GLuint m_indexBufferHandle;

	float* m_positionBuffer;
	float* m_normalBuffer;
	unsigned int* m_indexBuffer;
	float* m_uvBuffer;

	unsigned int m_vertexCount;
	unsigned int m_indexCount; 
};