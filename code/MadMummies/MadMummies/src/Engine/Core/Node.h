#pragma once


class RenderState;
class Behavior;


class Node
{
public:
	Node(void);
	virtual ~Node(void);

	virtual void Update(double deltaT);
	virtual void Render();
	virtual void UploadToVram() {};
	virtual void UnloadFromVram() {};

	Node* GetParent() { return m_parent; }
	void SetParent(Node* parent) { m_parent = parent; }

	Node* GetFirstChild() { return m_firstChild; }
	void AddChild(Node* child) { 
		child->SetParent(this);
		if (m_firstChild != 0) { child->SetNextSibling(m_firstChild); } else { child->SetNextSibling(0); }
		m_firstChild = child;
	}
	Node* GetNextSibling() { return m_nextSibling; }

	void SetBehavior(Behavior* behavior) { m_behavior = behavior; }
	Behavior* GetBehavior() { return m_behavior; }

	void SetRenderState(RenderState* renderState) { m_renderState = renderState; }
	RenderState* GetRenderState() { return m_renderState; }
	

private:
	void SetNextSibling(Node* sibling) { m_nextSibling = sibling; }

	Node* m_firstChild;
	Node* m_parent;
	Node* m_nextSibling;

	Behavior* m_behavior;
	RenderState* m_renderState;
};