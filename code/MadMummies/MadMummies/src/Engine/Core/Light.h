#pragma once

#include "Transformable.h"

#include "glew.h"

class Light : public Transformable
{
	typedef Transformable Base;

public:
	Light(void);
	virtual ~Light(void);

	virtual void Update(double deltaT);
	virtual void Render();

private:
	GLfloat m_lightDiffuse[4];
	GLfloat m_lightPosition[4];
};