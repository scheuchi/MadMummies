#include "DuckBehavior.h"

#include "Engine/Core/Transformable.h"

#include <glfw.h>

DuckBehavior::DuckBehavior() : m_transformable(0)
{
}

DuckBehavior::~DuckBehavior()
{
}

void DuckBehavior::OnSetNode()
{
	m_transformable = dynamic_cast<Transformable*>(Base::GetNode());
}

void DuckBehavior::Update(double deltaT)
{
	if (m_transformable == 0) {
		return;
	}
	
	m_transformable->Rotate(glm::vec3(0.0f, deltaT * 360, 0.0f));

}
