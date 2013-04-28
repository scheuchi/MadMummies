#include "Transformable.h"

#define GLM_MESSAGES
#include <glm/glm.hpp>


Transformable::Transformable() : m_localMatrix(1.0f), m_modelMatrix(1.0f),
	m_rotation(0.0f, 0.0f, 0.0f), m_rotationAngle(0.0f), m_translation(0.0f, 0.0f, 0.0f), m_scaling(1.0f, 1.0f, 1.0f),
	m_isLocalMatrixInvalid(true), m_isModelMatrixInvalid(true)
{
}

Transformable::~Transformable()
{
}

void Transformable::Update(double deltaT)
{
	Base::Update(deltaT);
}

void Transformable::Render()
{
	Base::Render();
}

void Transformable::SetRotation(glm::vec3& rotation, glm::float_t angle)
{
}

void Transformable::GetRotation(glm::vec3& rotation, glm::float_t& angle)
{
	rotation = m_rotation; 
	angle = m_rotationAngle; 
}

void Transformable::Rotate(glm::vec3& rotate, glm::float_t angle)
{
}

void Transformable::SetTranslation(glm::vec3& tranlsation)
{
}

glm::vec3& Transformable::GetTranslation()
{
	return m_translation;
}

void Transformable::Translate(glm::vec3& translate)
{
}

void Transformable::SetScaling(glm::vec3& scaling)
{
}

glm::vec3& Transformable::GetScaling()
{
	return m_scaling;
}

void Transformable::Scale(glm::vec3& scale)
{
}

glm::mat4& Transformable::GetModelMatrix()
{
	return m_modelMatrix;
}

glm::mat4& Transformable::GetLocalMatrix()
{
	return m_localMatrix;
}

void Transformable::SetLocalMatrix(glm::mat4& localMatrix)
{
}