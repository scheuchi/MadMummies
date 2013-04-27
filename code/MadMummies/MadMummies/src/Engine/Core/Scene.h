#pragma once

#include "Transformable.h"


class Scene : public Transformable
{
	typedef Transformable Base;

public:
	Scene(void);
	virtual ~Scene(void);
	
	virtual void Update(double deltaT);
	virtual void Render();

};

