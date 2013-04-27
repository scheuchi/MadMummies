#include "Mesh.h"

#include <iostream>
#include <sstream>

#include "glew.h"


Mesh::Mesh() : m_shader(0), m_vecTextures(), m_vertexBufferObject(0), m_vaoHandle(0)
{
}

Mesh::~Mesh()
{
	UnloadFromVram();
}

void Mesh::Update(double deltaT)
{
	Base::Update(deltaT);
	std::cout << "Mesh" << std::endl;
}

void Mesh::Render()
{
	Base::Render();
 
	if(m_shader != 0) {
		m_shader->Activate();
	}
	
	int i = 0;
	std::stringstream strIndex;
	for (std::vector<Texture*>::iterator itr = m_vecTextures.begin(); itr != m_vecTextures.end(); ++itr, ++i) {
		(*itr)->Activate();
		strIndex.clear();
		strIndex << "colorTexture" << i;
		GLint location = m_shader->GetUniformLocation(strIndex.str().c_str());
		glUniform1i(location, (*itr)->GetTextureUnit()); 
	}
 
	glBindVertexArray(*m_vaoHandle); 
	glDrawElements(GL_TRIANGLES, m_vertexBufferObject->GetVertexIndexCount(), GL_UNSIGNED_INT, 0); 
	glBindVertexArray(0);
	glUseProgram(0);
}

void Mesh::UploadToVram()
{
	if (m_shader != 0) {
		m_shader->UploadToVram();
	}

	std::vector<Texture*>::iterator itr;
	for ( itr = m_vecTextures.begin(); itr != m_vecTextures.end(); ++itr ) {
		(*itr)->UploadToVram();
	}

	// (2) create Vertex Array Object (VAO)
	m_vaoHandle = new GLuint;
	glGenVertexArrays(1, m_vaoHandle);
	glBindVertexArray(*m_vaoHandle);
 
	glBindBuffer(GL_ARRAY_BUFFER, m_vertexBufferObject->GetAttributeHandle(VertexBufferObject::AttribPosition0));
	GLint positionIndex = m_shader->GetAttributeLocation("position");
	glEnableVertexAttribArray(positionIndex);
	glVertexAttribPointer(positionIndex, 3, GL_FLOAT, GL_FALSE, 0, 0);
 
	glBindBuffer(GL_ARRAY_BUFFER, m_vertexBufferObject->GetAttributeHandle(VertexBufferObject::AttribNormal0));
	GLint normalIndex = m_shader->GetAttributeLocation("normal");
	glEnableVertexAttribArray(normalIndex);
	glVertexAttribPointer(normalIndex, 3, GL_FLOAT, GL_FALSE, 0, 0);
 
	glBindBuffer(GL_ARRAY_BUFFER, m_vertexBufferObject->GetAttributeHandle(VertexBufferObject::AttribUv0));
	GLint uvIndex = m_shader->GetAttributeLocation("uv");
	glEnableVertexAttribArray(uvIndex);
	glVertexAttribPointer(uvIndex, 2, GL_FLOAT, GL_FALSE, 0, 0);
 
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_vertexBufferObject->GetIndexBufferHandle());
 
	// (3) clean up!
	glBindVertexArray(0);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	

	Base::UploadToVram();
}

void Mesh::UnloadFromVram()
{
	if (m_shader != 0) {
		m_shader->UnloadFromVram();
	}

	std::vector<Texture*>::iterator itr;
	for ( itr = m_vecTextures.begin(); itr != m_vecTextures.end(); ++itr ) {
		(*itr)->UnloadFromVram();
	}

	glDeleteVertexArrays(1, m_vaoHandle);
	Base::UnloadFromVram();
}