#include "CameraBehavior.h"

#include "Engine/Core/Transformable.h"
#include "Engine/Physics/PhysicsWorld.h"

#include <glfw.h>


const float CameraBehavior::JUMP_INITIAL_SPEED = 20.0;
const float CameraBehavior::JUMP_GRAVITY = 30.0;


btScalar CameraBehavior::addSingleResult(btManifoldPoint& cp, const btCollisionObjectWrapper* colObj0Wrap,
			int partId0, int index0, const btCollisionObjectWrapper* colObj1Wrap, int partId1, int index1)
{
	static long counter = 1;
	btVector3 ptA = cp.getPositionWorldOnA();
	btVector3 ptB = cp.getPositionWorldOnB();
	printf("%d. collision:  x=%f - y=%f - z=%f\n", counter++, ptA.x() - ptB.x(), ptA.y() - ptB.y(), ptA.z() - ptB.z());
	
	btVector3 entered(cp.m_normalWorldOnB*cp.m_distance1);
	glm::vec3 reverse(-entered.x(), 0.0f, -entered.z());
	m_camera->Translate(reverse);
	
	return 0;
}

CameraBehavior::CameraBehavior() : m_leftPressed(false), m_rightPressed(false),
		m_upPressed(false), m_downPressed(false),
		m_camera(0), m_isInitialized(false), m_oldMousePos(0.0f, 0.0f),
		m_jumping(false), m_jumpSpeed(0.0f), m_height(0.0), m_initialHeight(0.0f),
		m_physicsRigidBody(0)
{
}

CameraBehavior::~CameraBehavior()
{
	if (m_physicsRigidBody != 0) {
		m_camera->GetScene()->GetPhysicsWorld()->RemoveRigidBody(m_physicsRigidBody);
		delete m_physicsRigidBody;
	}
}

void CameraBehavior::OnSetNode()
{
	Base::OnSetNode();

	m_camera = dynamic_cast<Camera*>(Base::GetNode());

	if (m_camera == 0) { return; }

	btCollisionShape* cameraShape = new btBoxShape(btVector3(0.1f, 1.0f, 0.1f));
	btRigidBody::btRigidBodyConstructionInfo wallCI(0, 0, cameraShape);

	btMatrix3x3 ident;
	ident.setIdentity();
	btTransform trans(ident, btVector3(m_camera->GetModelMatrix()[3][0], m_camera->GetModelMatrix()[3][1],
								m_camera->GetModelMatrix()[3][2]));
	wallCI.m_startWorldTransform = trans;
	m_physicsRigidBody = new btRigidBody(wallCI);

	//m_camera->GetScene()->GetPhysicsWorld()->AddRigidBody(m_physicsRigidBody);



	UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'W');
	UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'S');
	UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'A');
	UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'D');
	UserInputServer::GetInstance()->RegisterKeyInputListener(this, GLFW_KEY_SPACE);

	UserInputServer::GetInstance()->RegisterMouseInputListener(this);

	m_initialHeight = m_camera->GetPosition().y;

}

void CameraBehavior::Update(double deltaT)
{
	if (m_camera == 0) {
		return;
	}
		
	const glm::vec2 movevec( ((m_upPressed?10.0f:0.0f) - (m_downPressed==GLFW_PRESS?10.0f:0.0f)),
		((m_rightPressed==GLFW_PRESS?10.0f:0.0f) - (m_leftPressed==GLFW_PRESS?10.0f:0.0f)) );
	
	glm::vec3 translateVec =  ((movevec.x == 0.0f ? glm::vec3(0.0f) : m_camera->GetLookDir() * movevec.x ) +
		(movevec.y == 0.0f ? glm::vec3(0.0f) : m_camera->GetSideDir() * movevec.y )) * (float)deltaT;
	translateVec.y = 0.0f;
	m_camera->Translate(translateVec);

	m_leftPressed = m_rightPressed = m_upPressed = m_downPressed = false;

	HandleJumping(deltaT);

	// collision detection
	btMatrix3x3 ident;
	ident.setIdentity();
	btTransform trans(ident, btVector3(m_camera->GetModelMatrix()[3][0], m_camera->GetModelMatrix()[3][1],
		m_camera->GetModelMatrix()[3][2]));
	m_physicsRigidBody->setWorldTransform(trans);

	// check colission
	m_camera->GetScene()->GetPhysicsWorld()->GetNative()->performDiscreteCollisionDetection();
	m_camera->GetScene()->GetPhysicsWorld()->GetNative()->contactTest(m_physicsRigidBody, *this);
}

void CameraBehavior::KeyPressed(int key)
{
	switch(key) {
	case 'A':
		m_leftPressed = true;
		break;
	case 'D':
		m_rightPressed = true;
		break;
	case 'W':
		m_upPressed = true;
		break;
	case 'S':
		m_downPressed = true;
		break;
	case GLFW_KEY_SPACE:
		if (!m_jumping) {
			m_jumping = true;
			m_jumpSpeed = JUMP_INITIAL_SPEED;
		}
	}
}

void CameraBehavior::OnMouseButton(int btn, int state)
{
	// if (btn == GLFW_MOUSE_BUTTON_RIGHT)
}

void CameraBehavior::OnMouseMoved(int x, int y)
{
	if (m_camera== 0) { return; }

	if (!m_isInitialized) {
		m_oldMousePos.x = static_cast<float>(x);
		m_oldMousePos.y = static_cast<float>(y);
		m_isInitialized = true;
		return;
	}
	
	const float mouseSens = 0.05f;
	glm::vec2 mousePos(x, y);

	const glm::vec2 delta = mousePos - m_oldMousePos;
	m_oldMousePos = mousePos;	
	m_camera->Rotate(-glm::vec3(delta.y, delta.x, 0.0f) * mouseSens);
}

void CameraBehavior::HandleJumping(double deltaT)
{
	if (m_jumping) {
		m_jumpSpeed -= JUMP_GRAVITY * (float) deltaT;
		m_height += m_jumpSpeed * (float) deltaT;
		
		if (m_height <= m_initialHeight) 
		{
			m_height = m_initialHeight;
			m_jumpSpeed = 0.0;
			m_jumping = false;
		}
		if (m_camera != 0) {
			m_camera->GetPosition().y = m_height;
		}
	}
}