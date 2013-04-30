#include "Transformable.h"

#define GLM_MESSAGES
#include <glm/glm.hpp>
#include <glm/ext.hpp>


Transformable::Transformable() : m_localMatrix(1.0f), m_modelMatrix(1.0f),
	m_rotation(0.0f, 0.0f, 0.0f), m_position(0.0f, 0.0f, 0.0f), m_scale(1.0f, 1.0f, 1.0f),
	m_isLocalMatrixInvalid(true)
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
	InvalidateLocalMatrix(true);
}

glm::vec3& Transformable::GetRotation()
{
	return m_rotation;
}

void Transformable::Rotate(glm::vec3& rotation)
{
	m_rotation += rotation;
	InvalidateLocalMatrix(true);
}

void Transformable::SetPosition(glm::vec3& position)
{
	m_position = position;
	InvalidateLocalMatrix(true);
}

glm::vec3& Transformable::GetPosition()
{
	return m_position;
}

void Transformable::Translate(glm::vec3& translate)
{
	m_position += translate;
	InvalidateLocalMatrix(true);
}

void Transformable::SetScale(glm::vec3& scale)
{
	m_scale = scale;
	InvalidateLocalMatrix(true);
}

glm::vec3& Transformable::GetScale()
{
	return m_scale;
}

void Transformable::Scale(glm::vec3& scale)
{
	m_scale *= scale;
	InvalidateLocalMatrix(true);
}

glm::mat4 Transformable::GetModelMatrix()
{
	return m_modelMatrix;
}

void Transformable::UpdateModelMatrix()
{
	glm::mat4 parentMatrix = glm::mat4(1.0f);
	if (Base::GetParent() != 0) {
		parentMatrix = Base::GetParent()->GetModelMatrix();
	}
	m_modelMatrix = parentMatrix * GetLocalMatrix();
}

glm::mat4& Transformable::GetLocalMatrix()
{
	if (IsLocalMatrixInvalid()) {
		// position
		glm::mat4 translationMatrix = glm::translate(m_position);
		// rotation
		glm::mat4 rotationMatrix = glm::mat4(1.0f);
		rotationMatrix *= glm::rotate(glm::mat4(1.0f), m_rotation.x, glm::vec3(1.0f, 0.0f, 0.0f)); // x
		rotationMatrix *= glm::rotate(glm::mat4(1.0f), m_rotation.y, glm::vec3(0.0f, 1.0f, 0.0f)); // y
		rotationMatrix *= glm::rotate(glm::mat4(1.0f), m_rotation.z, glm::vec3(0.0f, 0.0f, 1.0f)); // z
		// scale
		glm::mat4 scaleMatrix = glm::scale(m_scale);
		
		m_localMatrix = translationMatrix * rotationMatrix * scaleMatrix;
		// camera: m_localMatrix = scaleMatrix * rotationMatrix * translationMatrix; // camera
		
		InvalidateLocalMatrix(false);
	}	
	return m_localMatrix;
}

void Transformable::SetLocalMatrix(glm::mat4& localMatrix)
{
	m_localMatrix = localMatrix;
	m_rotation = glm::vec3(0.0f, 0.0f, 0.0f);
	m_position = glm::vec3(0.0f, 0.0f, 0.0f);
	m_scale = glm::vec3(1.0f, 1.0f, 1.0f);
	InvalidateLocalMatrix(false);
}