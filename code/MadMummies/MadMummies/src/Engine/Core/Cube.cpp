#include "Cube.h"
#include <iostream>


Cube::Cube() : m_angleX(0)
{
}

Cube::~Cube()
{
}

void Cube::Update(double deltaT)
{
	Base::Update(deltaT);
	std::cout << "Cube" << std::endl;
	m_angleX = static_cast<float>((m_angleX + 60.0f * deltaT)) / 360.0f;
}

void Cube::Render()
{
	Base::Render();

	glMatrixMode(GL_MODELVIEW);     
	glLoadIdentity();    
	
	glTranslatef(0.0f, 0.0f, -10.0f);
	glRotatef(m_angleX, 0.0f, 1.0f, 0.0f);

	glBegin(GL_TRIANGLES);          
		glColor3f(1.0f, 0.0f, 0.0f);    
		glVertex3f(-5.0f, -4.0f, 0.0f); 
		glColor3f(0.0f, 1.0f, 0.0f);    
		glVertex3f(5.0f, -4.0f, 0.0f); 
		glColor3f(0.0f, 0.0f, 1.0f);    
		glVertex3f(0.0f, 4.5f, 0.0f); 
	glEnd();
}
