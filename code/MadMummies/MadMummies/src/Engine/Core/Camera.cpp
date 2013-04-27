#include "Camera.h"

#include "glew.h"
#include <iostream>

Camera::Camera() : m_ViewportTop(0), m_ViewportLeft(0), m_ViewportWidth(0), m_ViewportHeight(0)
{
}

Camera::~Camera()
{
}

void Camera::Update(double deltaT)
{
	Base::Update(deltaT);	
	std::cout << "Camera" << std::endl;
}

void Camera::Render()
{
	Base::Render();

	glViewport(m_ViewportTop, m_ViewportLeft, m_ViewportWidth, m_ViewportHeight);
	glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
	
	glMatrixMode(GL_PROJECTION);    
	glLoadIdentity(); 
	glFrustum(-2.0, 2.0, -2.0, 2.0, 1.0, 100.0);

	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}