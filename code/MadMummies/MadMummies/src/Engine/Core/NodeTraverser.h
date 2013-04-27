#pragma once

#include "Transformable.h"



class NodeTraverser
{

public:
	typedef void (*TraverserFunction)(Node*, void*);

	static void UploadToVram(Node* node, void* data);
	static void UpdateNode(Node* node, void* data);
	static void RenderNode(Node* node, void* data);
	

	NodeTraverser(void);
	virtual ~NodeTraverser(void);

	void Traverse(Node* rootNode, TraverserFunction func, void* data);
};

