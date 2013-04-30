#include "CameraBehavior.h"

#include "Engine/Core/Transformable.h"

#include <glfw.h>

CameraBehavior::CameraBehavior() : 	m_leftPressed(false), m_rightPressed(false),
		m_upPressed(false), m_downPressed(false), m_camera(0)
{
}

CameraBehavior::~CameraBehavior()
{
}

void CameraBehavior::OnSetNode()
{
	m_camera = dynamic_cast<Camera*>(Base::GetNode());

	if (m_camera != 0) {
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, GLFW_KEY_UP);
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, GLFW_KEY_DOWN);
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, GLFW_KEY_LEFT);
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, GLFW_KEY_RIGHT);
	}
}

void CameraBehavior::Update(double deltaT)
{
	if (m_camera == 0) {
		return;
	}
	if (m_leftPressed) {
		m_camera->Rotate(glm::vec3(0.0f, -1.0f, 0.0f));
		m_leftPressed = false;
	}
	if (m_rightPressed) {
		m_camera->Rotate(glm::vec3(0.0f, 1.0f, 0.0f));
		m_rightPressed = false;
	}
	if (m_upPressed) {
		m_camera->Translate(glm::vec3(0.0f, 0.0f, 1.0f));
		m_upPressed = false;
	}
	if (m_downPressed) {
		m_camera->Translate(glm::vec3(0.0f, 0.0f, -1.0f));
		m_downPressed = false;
	}
}

void CameraBehavior::KeyPressed(int key)
{
	switch(key) {
	case GLFW_KEY_LEFT:
		m_leftPressed = true;
		break;
	case GLFW_KEY_RIGHT:
		m_rightPressed = true;
		break;
	case GLFW_KEY_UP:
		m_upPressed = true;
		break;
	case GLFW_KEY_DOWN:
		m_downPressed = true;
		break;
	}
}