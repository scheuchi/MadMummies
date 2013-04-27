#include "Node.h"

#include "Engine/Behavior/Behavior.h"
#include "Engine/Core/RenderState.h"

Node::Node() : 	m_firstChild(0), m_parent(0), m_nextSibling(0), m_behavior(0), m_renderState(0)
{
}

Node::~Node()
{
}

void Node::Update(double deltaT)
{
	if (m_behavior != 0) {
		m_behavior->Update(deltaT);
	}
}

void Node::Render()
{
	if (m_renderState != 0) {
		m_renderState->Activate();
	}
}