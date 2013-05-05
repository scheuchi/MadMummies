#include "CameraBehavior.h"

#include "Engine/Core/Transformable.h"

#include <glfw.h>

CameraBehavior::CameraBehavior() : 	m_leftPressed(false), m_rightPressed(false),
		m_upPressed(false), m_downPressed(false),
		m_camera(0), m_isInitialized(false), m_oldMousePos(0.0f, 0.0f)
{
}

CameraBehavior::~CameraBehavior()
{
}

void CameraBehavior::OnSetNode()
{
	m_camera = dynamic_cast<Camera*>(Base::GetNode());

	if (m_camera != 0) {
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'W');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'S');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'A');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'D');

		UserInputServer::GetInstance()->RegisterMouseInputListener(this);
	}
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