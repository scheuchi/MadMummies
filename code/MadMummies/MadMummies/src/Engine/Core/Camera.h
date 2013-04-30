#pragma once

#include "Transformable.h"
#include "Scene.h"


class Camera : public Transformable
{
	typedef Transformable Base;

public:
	Camera();
	virtual ~Camera();

	virtual void Update(double deltaT);
	virtual void OnSetScene();

	virtual void UpdateModelMatrix();

	virtual glm::mat4& GetLocalMatrix();


	void Activate();
	
	void SetViewport(int top, int left, int width, int height) {
		 m_ViewportTop = top; m_ViewportLeft = left;
		 m_ViewportWidth = width; m_ViewportHeight = height;
	}

	glm::mat4& GetViewMatrix() { return m_viewMatrix; }
	glm::mat4& GetProjectionMatrix() { return m_projectionMatrix; }

	void SetLookAtVector(glm::vec3& vec) { m_lookAtVector = vec; }
	glm::vec3& GetLookAtVector() { return m_lookAtVector; }

	void SetUpVector(glm::vec3& vec) { m_upVector = vec; }
	glm::vec3& GetUpVector() { return m_upVector; }

	void SetFieldOfView(float fieldOfView) { m_fieldOfView = fieldOfView; }
	float GetFieldOfView() { return m_fieldOfView; }

	void SetNearPlane(float nearPlane) { m_nearPlane = nearPlane; }
	float GetNearPlane() { return m_nearPlane; }

	void SetFarPlane(float farPlane) { m_farPlane = farPlane; }
	float GetFarPlane() { return m_farPlane; }

private:
	int m_ViewportTop, m_ViewportLeft, m_ViewportWidth, m_ViewportHeight;

	glm::mat4 m_viewMatrix;
	glm::mat4 m_projectionMatrix;

	glm::vec3 m_lookAtVector;
	glm::vec3 m_upVector;

	float m_fieldOfView;
	float m_nearPlane;
	float m_farPlane;
};

