#include "Light.h"
#include <iostream>


Light::Light()
{
	m_lightDiffuse[0] = 1.0f;
	m_lightDiffuse[1] = 1.0f;
	m_lightDiffuse[2] = 1.0f;
	m_lightDiffuse[3] = 1.0f;

	m_lightPosition[0] = 1.0f;
	m_lightPosition[1] = 1.0f;
	m_lightPosition[2] = 1.0f;
	m_lightPosition[3] = 1.0f;
}

Light::~Light()
{
}

void Light::Update(double deltaT)
{
	Base::Update(deltaT);
	std::cout << "Light" << std::endl;
}

void Light::Render()
{
	Base::Render();

	glLightfv(GL_LIGHT0, GL_DIFFUSE, m_lightDiffuse);
	glLightfv(GL_LIGHT0, GL_POSITION, m_lightPosition);
	glEnable(GL_LIGHT0);
	//glEnable(GL_LIGHTING);
}