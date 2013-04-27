#pragma once

#include "Node.h"

class Transformable : public Node
{
	typedef Node Base;

public:
	Transformable();
	virtual ~Transformable();

	virtual void Update(double deltaT);
	virtual void Render();
};

