#include "Light.h"

#include <iostream>
#include <sstream>

#include "Scene.h"
#include "Shader.h"


Light::Light() : m_color(1.0f, 1.0f, 1.0f),
		m_direction(1.0f, 0.5f, 0.75f), m_ambientIntensity(0.3f), m_mvDirection(0.0f, 0.0f, 0.0f)
{
}

Light::Light(glm::vec3 color, glm::vec3 direction, float ambientIntensity) : 
		m_color(color),
		m_direction(direction), m_ambientIntensity(ambientIntensity), m_mvDirection(0.0f, 0.0f, 0.0f)
{
}

Light::~Light()
{
	if (GetScene() != 0) {
		GetScene()->RemoveLight(this);
	}
}

void Light::OnSetScene()
{
	if (GetScene() != 0) {
		GetScene()->AddLight(this);
	}
}

void Light::Update(double deltaT)
{
	Base::Update(deltaT);
}

void Light::Activate(Shader* shader, unsigned int id)
{
	{
		std::stringstream strIndex;
		strIndex.clear();
		strIndex << "light" << id << ".vColor";
		GLint location = shader->GetUniformLocation(strIndex.str().c_str());
		if (location != -1) {
			float* f = glm::value_ptr(m_color);
			glUniform3fv(location, 1, f);
		}
	}
	{
		std::stringstream strIndex;
		strIndex.clear();
		strIndex << "light" << id << ".vDirection";
		GLint location = shader->GetUniformLocation(strIndex.str().c_str());
		if (location != -1) {
			//------------------------------------------------
			glm::mat4 viewMatrix = Base::GetScene()->GetActiveCamera()->GetViewMatrix();
			glm::mat4 modelMatrix = Base::GetModelMatrix();
			glm::mat3 normalMatrix = glm::transpose(glm::inverse(glm::mat3(viewMatrix * modelMatrix)));
			//------------------------------------------------
			m_mvDirection = normalMatrix * m_direction;
			glUniform3fv(location, 1, glm::value_ptr(m_mvDirection));
		}
	}
	{
		std::stringstream strIndex;
		strIndex.clear();
		strIndex << "light" << id << ".fAmbientIntensity";
		GLint location = shader->GetUniformLocation(strIndex.str().c_str());
		if (location != -1) {
			glUniform1f(location, m_ambientIntensity);
		}
	}
}