#pragma once

#include "Transformable.h"
#include "Shader.h"
#include "Texture.h"
#include "VertexBufferObject.h"

#include <vector>


class Mesh : public Transformable
{
	typedef Transformable Base;

public:
	Mesh(void);
	virtual ~Mesh(void);

	virtual void Update(double deltaT);
	virtual void Render();
	virtual void UploadToVram();
	virtual void UnloadFromVram();

	void SetShader(Shader* shader) { m_shader = shader; }
	Shader* GetShader() { return m_shader; }

	void AddTexture(Texture* texture) { if (texture != 0) { m_vecTextures.push_back(texture); } }
	std::vector<Texture*> GetTextures() { return m_vecTextures; }

	void SetVertexBufferObject(VertexBufferObject* vbo) { m_vertexBufferObject = vbo; }
	VertexBufferObject* GetVertexBufferObject() { return m_vertexBufferObject; }


private:
	Shader* m_shader;
	std::vector<Texture*> m_vecTextures;
	GLuint m_vaoHandle;	
	VertexBufferObject* m_vertexBufferObject;

	glm::mat4 m_mvpMatrix;
	glm::mat3 m_normalMatrix;
};