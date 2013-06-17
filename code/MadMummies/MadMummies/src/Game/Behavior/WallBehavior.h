#pragma once

#include "Engine/Behavior/Behavior.h"


class Mesh;
class btRigidBody;

class WallBehavior : public Behavior
{
	typedef Behavior Base;


public:
	WallBehavior();
	virtual ~WallBehavior();

	virtual void OnSetNode();
	virtual void Update(double deltaT);

private:
	Mesh* m_wall;
	btRigidBody* m_physicsRigidBody;
};
