#pragma once

#include "Engine/Behavior/Behavior.h"
#include "Engine/Util/UserInputServer.h"


class Node;
class Transformable;

class MeshBehavior : public Behavior, KeyInputListener
{
	typedef Behavior Base;

public:
	MeshBehavior();
	virtual ~MeshBehavior();

	virtual void OnSetNode();
	virtual void Update(double deltaT);

	virtual void KeyPressed(int key);

private:
	bool m_leftPressed;
	bool m_rightPressed;
	bool m_upPressed;
	bool m_downPressed;
	Transformable* m_transformable;
};
