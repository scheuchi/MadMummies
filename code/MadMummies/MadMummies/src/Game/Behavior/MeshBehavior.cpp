#include "MeshBehavior.h"

#include "Engine/Core/Transformable.h"

#include <glfw.h>

MeshBehavior::MeshBehavior() : 	m_leftPressed(false), m_rightPressed(false),
		m_upPressed(false), m_downPressed(false), m_transformable(0)
{
}

MeshBehavior::~MeshBehavior()
{
}

void MeshBehavior::OnSetNode()
{
	m_transformable = dynamic_cast<Transformable*>(Base::GetNode());

	if (m_transformable != 0) {
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, GLFW_KEY_LEFT);
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, GLFW_KEY_RIGHT);
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, GLFW_KEY_UP);
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, GLFW_KEY_DOWN);
	}
}

void MeshBehavior::Update(double deltaT)
{
	if (m_transformable == 0) {
		return;
	}
	if (m_leftPressed) {
		m_transformable->Rotate(glm::vec3(0.0f, -5.0f, 0.0f));
		m_leftPressed = false;
	}
	if (m_rightPressed) {
		m_transformable->Rotate(glm::vec3(0.0f, 2.5f, 0.0f));
		m_rightPressed = false;
	}
	if (m_upPressed) {
		m_transformable->Scale(glm::vec3(1.2f, 1.2f, 1.2f));
		m_upPressed = false;
	}
	if (m_downPressed) {
		m_transformable->Scale(glm::vec3(1.0f/1.2f, 1.0f/1.2f, 1.0f/1.2f));
		m_downPressed = false;
	}
}

void MeshBehavior::KeyPressed(int key)
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