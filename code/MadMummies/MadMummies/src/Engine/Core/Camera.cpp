#include "Camera.h"

#include "glew.h"
#include <iostream>

Camera::Camera() : m_ViewportTop(0), m_ViewportLeft(0), m_ViewportWidth(0), m_ViewportHeight(0)
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
	
	//glMatrixMode(GL_PROJECTION);    
	//glLoadIdentity(); 
	//glFrustum(-2.0, 2.0, -2.0, 2.0, 1.0, 100.0);

	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

void Camera::OnSetScene()
{
	if (GetScene() != 0) {
		GetScene()->AddCamera(this);
	}
}