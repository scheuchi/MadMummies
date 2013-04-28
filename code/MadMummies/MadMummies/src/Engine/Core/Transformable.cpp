#include "Transformable.h"

#define GLM_MESSAGES
#include <glm/glm.hpp>
#include <glm/ext.hpp>


Transformable::Transformable() : m_localMatrix(1.0f), m_modelMatrix(1.0f),
	m_rotation(0.0f, 0.0f, 0.0f), m_position(0.0f, 0.0f, 0.0f), m_scale(1.0f, 1.0f, 1.0f),
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

void Transformable::SetRotation(glm::vec3& rotation)
{
	m_rotation = rotation;
}

glm::vec3& Transformable::GetRotation()
{
	return m_rotation;
}

void Transformable::Rotate(glm::vec3& rotation)
{
	m_rotation += rotation;
}

void Transformable::SetPosition(glm::vec3& position)
{
	m_position = position;
}

glm::vec3& Transformable::GetPosition()
{
	return m_position;
}

void Transformable::Translate(glm::vec3& translate)
{
	m_position += translate;
}

void Transformable::SetScale(glm::vec3& scale)
{
	m_scale = scale;
}

glm::vec3& Transformable::GetScale()
{
	return m_scale;
}

void Transformable::Scale(glm::vec3& scale)
{
	m_scale *= scale;
}

glm::mat4& Transformable::GetModelMatrix()
{
	return m_modelMatrix;
}

glm::mat4& Transformable::GetLocalMatrix()
{
	if (m_isLocalMatrixInvalid) {
		glm::mat4 translationMatrix = glm::translate(m_position);
		glm::mat4 rotationMatrix = glm::rotate(0.0f, m_rotation);
		glm::mat4 scaleMatrix = glm::scale(m_scale);
		
		m_localMatrix = translationMatrix * rotationMatrix * scaleMatrix;
		m_isLocalMatrixInvalid = false;
	}	
	return m_localMatrix;
}

void Transformable::SetLocalMatrix(glm::mat4& localMatrix)
{
	m_localMatrix = localMatrix;
}