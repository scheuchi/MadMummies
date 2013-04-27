#include "Transformable.h"

Transformable::Transformable()
{
}

Transformable::~Transformable()
{
}

void Transformable::Update(double deltaT)
{
	Base::Update(deltaT);
}

void Transformable::Render()
{
	Base::Render();
}