#pragma once

#include "Engine/Behavior/Behavior.h"
#include "Engine/Util/UserInputServer.h"


class Node;
class Transformable;

class DuckBehavior : public Behavior
{
	typedef Behavior Base;


public:
	DuckBehavior();
	virtual ~DuckBehavior();

	virtual void OnSetNode();
	virtual void Update(double deltaT);

private:
	Transformable* m_transformable;
};
