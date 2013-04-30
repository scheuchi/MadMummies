#include "Camera.h"

#include "glew.h"
#include <iostream>

#include <glm/glm.hpp>
#include <glm/ext.hpp>

Camera::Camera() : m_ViewportTop(0), m_ViewportLeft(0), m_ViewportWidth(0), m_ViewportHeight(0),
		m_viewMatrix(1.0f), m_projectionMatrix(1.0f), m_lookAtVector(0.0f, 0.0f, -1.0f), m_upVector(0.0f, 1.0f, 0.0f),
		m_fieldOfView(60.0f), m_nearPlane(0.1f), m_farPlane(1000.0f)
{
}

Camera::~Camera()
{
	if (GetScene() != 0) {
		GetScene()->RemoveCamera(this);
	}
}

void Camera::Update(double deltaT)
{
	Base::Update(deltaT);
}

void Camera::Activate()
{
	glViewport(m_ViewportTop, m_ViewportLeft, m_ViewportWidth, m_ViewportHeight);
	glClearColor(0.4f, 0.8f, 0.2f, 1.0f);
	glClearDepth(1.0f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	GetScene()->SetActiveCamera(this);
}

void Camera::OnSetScene()
{
	if (GetScene() != 0) {
		GetScene()->AddCamera(this);
	}
}

void Camera::UpdateModelMatrix()
{
	Base::UpdateModelMatrix();
	
	glm::mat4& modelMatrix = Base::GetModelMatrix();
	glm::vec3 modelPosition(modelMatrix[3][0],
							modelMatrix[3][1],
							modelMatrix[3][2]);
	modelMatrix = glm::rotate(modelMatrix,GetRotation().y, glm::vec3(0, 1, 0));
	glm::vec4 modelLookAtVector = modelMatrix * glm::vec4(m_lookAtVector, 1.0f);
	glm::vec3 lookAt = glm::vec3(modelLookAtVector.x, modelLookAtVector.y, modelLookAtVector.z);

	m_viewMatrix = glm::lookAt(
			modelPosition,		// position of the camera in world space
			lookAt,				// look-at vector in world space
			m_upVector);		// up vector in local space
	
	//m_viewMatrix = glm::inverse(Base::GetModelMatrix());

	m_projectionMatrix = glm::perspective<glm::float_t>(
			m_fieldOfView,								// horizontal Field of View in degrees
			(float) m_ViewportWidth / m_ViewportHeight,	// aspect ratio
			m_nearPlane,
			m_farPlane);
}

glm::mat4& Camera::GetLocalMatrix()
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
		//m_localMatrix = scaleMatrix * rotationMatrix * translationMatrix * rotationMatrix; // camera
		
		InvalidateLocalMatrix(false);
	}	
	return m_localMatrix;
}
