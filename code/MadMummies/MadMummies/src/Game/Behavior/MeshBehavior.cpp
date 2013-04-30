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
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'A');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'S');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'D');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'W');
	}
}

void MeshBehavior::Update(double deltaT)
{
	if (m_transformable == 0) {
		return;
	}
	if (m_leftPressed) {
		m_transformable->Rotate(glm::vec3(0.0f, 5.0f, 0.0f));
		m_leftPressed = false;
	}
	if (m_rightPressed) {
		m_transformable->Rotate(glm::vec3(0.0f, -5.0f, 0.0f));
		m_rightPressed = false;
	}
	if (m_upPressed) {
		m_transformable->Translate(glm::vec3(0.0f, 0.0f, -1.0f));
		m_upPressed = false;
	}
	if (m_downPressed) {
		m_transformable->Translate(glm::vec3(0.0f, 0.0f, 1.0f));
		m_downPressed = false;
	}
}

void MeshBehavior::KeyPressed(int key)
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