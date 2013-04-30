#include "MeshBehavior.h"

#include "Engine/Core/Transformable.h"

#include <glfw.h>

MeshBehavior::MeshBehavior() : m_transformable(0)
{
	for (int i = 0; i < 3; ++i) {
		m_scale[i] = 1.0f;
		m_rotate[i] = 0.0f;
		m_translate[i] = 0.0f;
	}
}

MeshBehavior::~MeshBehavior()
{
}

void MeshBehavior::OnSetNode()
{
	m_transformable = dynamic_cast<Transformable*>(Base::GetNode());

	if (m_transformable != 0) {
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'Q');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'W');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'A');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'S');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'Y');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'X');

		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'E');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'R');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'D');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'F');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'C');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'V');

		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'T');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'Z');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'G');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'H');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'B');
		UserInputServer::GetInstance()->RegisterKeyInputListener(this, 'N');
	}
}

void MeshBehavior::Update(double deltaT)
{
	if (m_transformable == 0) {
		return;
	}
	m_transformable->Scale(glm::vec3(m_scale[x], m_scale[y], m_scale[z]));
	m_transformable->Rotate(glm::vec3(m_rotate[x], m_rotate[y], m_rotate[z]));
	m_transformable->Translate(glm::vec3(m_translate[x], m_translate[y], m_translate[z]));

	for (int i = 0; i < 3; ++i) {
		m_scale[i] = 1.0f;
		m_rotate[i] = 0.0f;
		m_translate[i] = 0.0f;
	}
}

void MeshBehavior::KeyPressed(int key)
{
	switch(key) {
		/*
	case 'Q':
		m_scale[x] = m_scale[y] = m_scale[z] =  1.0f / SCALE_FACT;
		break;
	case 'W':
		m_scale[x] = m_scale[y] = m_scale[z] =  SCALE_FACT;
		break;
	case 'A':
		m_scale[x] = m_scale[y] = m_scale[z] =  1.0f / SCALE_FACT;
		break;
	case 'S':
		m_scale[x] = m_scale[y] = m_scale[z] =  SCALE_FACT;
		break;
	case 'Y':
		m_scale[x] = m_scale[y] = m_scale[z] =  1.0f / SCALE_FACT;
		break;
	case 'X':
		m_scale[x] = m_scale[y] = m_scale[z] =  SCALE_FACT;
		break;
	*/

	case 'E':
		m_rotate[x] = -ROTATE_FACT;
		break;
	case 'R':
		m_rotate[x] = ROTATE_FACT;
		break;
	case 'D':
		m_rotate[y] = -ROTATE_FACT;
		break;
	case 'F':
		m_rotate[y] = ROTATE_FACT;
		break;
	case 'C':
		m_rotate[z] = -ROTATE_FACT;
		break;
	case 'V':
		m_rotate[z] = ROTATE_FACT;
		break;

	case 'T':
		m_translate[x] = -TRANSLATE_FACT;
		break;
	case 'Z':
		m_translate[x] = TRANSLATE_FACT;
		break;
	case 'G':
		m_translate[y] = -TRANSLATE_FACT;
		break;
	case 'H':
		m_translate[y] = TRANSLATE_FACT;
		break;
	case 'B':
		m_translate[z] = -TRANSLATE_FACT;
		break;
	case 'N':
		m_translate[z] = TRANSLATE_FACT;
		break;

	}
}