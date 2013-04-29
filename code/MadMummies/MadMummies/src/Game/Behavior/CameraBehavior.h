#pragma once

#include "Engine/Behavior/Behavior.h"
#include "Engine/Util/UserInputServer.h"
#include "Engine/Core/Camera.h"


class Node;
class Transformable;

class CameraBehavior : public Behavior, KeyInputListener
{
	typedef Behavior Base;

public:
	CameraBehavior();
	virtual ~CameraBehavior();

	virtual void OnSetNode();
	virtual void Update(double deltaT);

	virtual void KeyPressed(int key);

private:
	bool m_leftPressed;
	bool m_rightPressed;
	bool m_upPressed;
	bool m_downPressed;
	Camera* m_camera;
};
