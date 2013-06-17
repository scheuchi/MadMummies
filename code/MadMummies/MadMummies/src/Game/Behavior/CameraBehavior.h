#pragma once

#include "Engine/Behavior/Behavior.h"
#include "Engine/Util/UserInputServer.h"
#include "Engine/Core/Camera.h"

#include <btBulletDynamicsCommon.h>


class Node;
class Transformable;
class btRigidBody;

class CameraBehavior : public Behavior, public KeyInputListener, public MouseInputListener, public btCollisionWorld::ContactResultCallback
{
	typedef Behavior Base;

public:
	CameraBehavior();
	virtual ~CameraBehavior();

	virtual void OnSetNode();
	virtual void Update(double deltaT);

	virtual void KeyPressed(int key);

	void OnMouseButton(int btn, int state);
	void OnMouseMoved(int x, int y);

	void HandleJumping(double deltaT);

	virtual btScalar addSingleResult(btManifoldPoint& cp, const btCollisionObjectWrapper* colObj0Wrap,
			int partId0, int index0, const btCollisionObjectWrapper* colObj1Wrap, int partId1, int index1);


private:
	static const float JUMP_INITIAL_SPEED;
	static const float JUMP_GRAVITY;

	bool m_leftPressed;
	bool m_rightPressed;
	bool m_upPressed;
	bool m_downPressed;
	Camera* m_camera;
	bool m_isInitialized;
	glm::vec2 m_oldMousePos;
	bool m_jumping;
	float m_jumpSpeed;
	float m_height;
	float m_initialHeight;

	btRigidBody* m_physicsRigidBody;
};
