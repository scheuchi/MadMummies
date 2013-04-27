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

	VertexBufferObject(float* positionBuffer, float* normalBuffer, float* uvBuffer,
		unsigned int* indexBuffer, unsigned int vertexCount, unsigned int indexCount);
	virtual ~VertexBufferObject();

	virtual void UploadToVram();
	virtual void UnloadFromVram();

	bool GetAttributeHandle(enum Attribute attribute, GLuint& handle);
	bool GetIndexBufferHandle(GLuint& handle);

	unsigned int GetVertexIndexCount() { return m_indexCount; }

private:
	int m_positionBufferHandle;
	int m_normalBufferHandle;
	int m_uvBufferHandle;
	int m_indexBufferHandle;

	float* m_positionBuffer;
	float* m_normalBuffer;
	unsigned int* m_indexBuffer;
	float* m_uvBuffer;

	unsigned int m_vertexCount;
	unsigned int m_indexCount; 
};