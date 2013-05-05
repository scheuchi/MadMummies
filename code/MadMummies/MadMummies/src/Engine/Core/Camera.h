#pragma once

#include "Transformable.h"
#include <glm/ext.hpp>
#include "Scene.h"
#include <iostream>
#include <stdio.h>


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

	glm::vec3 GetSideDir() { return  glm::normalize(glm::vec3(m_viewMatrix[0][0],m_viewMatrix[1][0],m_viewMatrix[2][0])); }
	glm::vec3 GetUpDir()   { return -glm::normalize(glm::vec3(m_viewMatrix[0][1],m_viewMatrix[1][1],m_viewMatrix[2][1])); }	
	glm::vec3 GetLookDir() { return -glm::normalize(glm::vec3(m_viewMatrix[0][2],m_viewMatrix[1][2],m_viewMatrix[2][2])); }
	glm::vec3 GetLookAtPoint() { return m_position + GetLookDir(); }

	static float AngleBetween(glm::vec2 const & v1, glm::vec2 const & v2);
	void LookAt(glm::vec3 const & eye, glm::vec3 const & center);

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


	float m_fieldOfView;
	float m_nearPlane;
	float m_farPlane;
};

