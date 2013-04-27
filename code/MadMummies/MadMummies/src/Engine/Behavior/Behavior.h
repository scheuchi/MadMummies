#pragma once

class Node;

class Behavior
{
public:
	Behavior(void);
	virtual ~Behavior(void);

	void SetNode(Node* node) { m_node = node; }

	virtual void Update(double deltaT);

private:
	Node* m_node;
};
