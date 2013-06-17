#include "Mesh.h"

#include "Scene.h"

#include <iostream>
#include <sstream>

#include "glew.h"

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>


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
}

void Mesh::Render()
{
	Base::Render();
 
	if(m_shader != 0) {
		m_shader->Activate();
		GLint location = m_shader->GetUniformLocation("mvp");
		if (location != -1) {
			glm::mat4& projectionMatrix = Base::GetScene()->GetActiveCamera()->GetProjectionMatrix();
			glm::mat4& viewMatrix = Base::GetScene()->GetActiveCamera()->GetViewMatrix();
			m_mvpMatrix = projectionMatrix * viewMatrix * GetModelMatrix();
			glUniformMatrix4fv(location, 1, GL_FALSE, glm::value_ptr(m_mvpMatrix));

			location = m_shader->GetUniformLocation("normalMatrix");
			if (location != -1) {	
				m_normalMatrix = glm::transpose(glm::inverse(glm::mat3(viewMatrix * GetModelMatrix())));
				glUniformMatrix3fv(location, 1, GL_FALSE, glm::value_ptr(m_normalMatrix));
			}
		} else {
			std::cout << "Unable to set mvp matrix." << std::endl;
			system("pause");
			exit(-1);
		}
	}

	if (Base::GetScene() != 0) {
		Base::GetScene()->ActivateLights(m_shader);
	}
	
	std::stringstream strIndex;
	for (std::vector<Texture*>::iterator itr = m_vecTextures.begin(); itr != m_vecTextures.end(); ++itr) {
		(*itr)->Activate();
		strIndex.clear();
		if ((*itr)->GetTextureUnit() > 0) {
			strIndex << "colorTexture" << (*itr)->GetTextureUnit() << "\0";
		} else {
			strIndex << "colorTexture" << "\0";
		}
		GLint location = m_shader->GetUniformLocation(strIndex.str().c_str());
		if (location != -1) {
			glUniform1i(location, (*itr)->GetTextureUnit());
		}
	}
 
	if (m_vertexBufferObject != 0) {
		glBindVertexArray(m_vaoHandle); 
		if (m_vertexBufferObject->IsIndexed()) {
			glDrawElements(GL_TRIANGLES, m_vertexBufferObject->GetVertexIndexCount(), GL_UNSIGNED_INT, 0);
		} else {
			glDrawArrays(GL_TRIANGLES, 0, m_vertexBufferObject->GetVertexCount());
		}
	}

	if(m_shader != 0) {
		m_shader->Deactivate();
	}
	glBindVertexArray(0);
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

	if (m_vertexBufferObject != 0) {

		m_vertexBufferObject->UploadToVram();

		glGenVertexArrays(1, &m_vaoHandle);
		glBindVertexArray(m_vaoHandle);

		GLuint handle = 0;
		if (m_vertexBufferObject->GetAttributeHandle(VertexBufferObject::AttribPosition0, handle)) {
			glBindBuffer(GL_ARRAY_BUFFER, handle);
			GLint positionIndex = m_shader->GetAttributeLocation("position");
			if (positionIndex != -1) {
				glEnableVertexAttribArray(positionIndex);
				glVertexAttribPointer(positionIndex, 3, GL_FLOAT, GL_FALSE, 0, 0);
			} else {
				std::cout << "Unable to enable position vertices." << std::endl;
				system("pause");
				exit(-1);
			}
		}
 
		if (m_vertexBufferObject->GetAttributeHandle(VertexBufferObject::AttribNormal0, handle)) {
			glBindBuffer(GL_ARRAY_BUFFER, handle);
			GLint normalIndex = m_shader->GetAttributeLocation("normal");
			if (normalIndex != -1) {
				glEnableVertexAttribArray(normalIndex);
				glVertexAttribPointer(normalIndex, 3, GL_FLOAT, GL_FALSE, 0, 0);
			}
		}

		if (m_vertexBufferObject->GetAttributeHandle(VertexBufferObject::AttribUv0, handle)) {
			glBindBuffer(GL_ARRAY_BUFFER, handle);
			GLint uvIndex = m_shader->GetAttributeLocation("uv");
			if (uvIndex != -1) {
				glEnableVertexAttribArray(uvIndex);
				glVertexAttribPointer(uvIndex, 2, GL_FLOAT, GL_FALSE, 0, 0);
			}
		}
 
		if (m_vertexBufferObject->GetIndexBufferHandle(handle)) {
			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, handle);
		}
 
		// (3) clean up!
		glBindVertexArray(0);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	}	

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

	if (m_vertexBufferObject != 0) {
		// todo: cleanup
		glDeleteVertexArrays(1, &m_vaoHandle);		
	}
	Base::UnloadFromVram();
}