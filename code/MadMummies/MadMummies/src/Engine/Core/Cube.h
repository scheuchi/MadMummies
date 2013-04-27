#pragma once

#include "Transformable.h"

#include "glew.h"

class Cube : public Transformable
{
	typedef Transformable Base;

public:
	Cube();
	virtual ~Cube();

	virtual void Update(double deltaT);
	virtual void Render();

private:
	float m_angleX;
};

