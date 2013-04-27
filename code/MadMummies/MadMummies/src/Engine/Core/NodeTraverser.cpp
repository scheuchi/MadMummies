#include "NodeTraverser.h"

#include "glew.h"

NodeTraverser::NodeTraverser()
{
}

NodeTraverser::~NodeTraverser()
{
}

void NodeTraverser::UpdateNode(Node* node, void* data)
{
	node->Update(*(reinterpret_cast<double*>(data)));	
}

void NodeTraverser::RenderNode(Node* node, void*)
{
	node->Render();
}

void NodeTraverser::UploadToVram(Node* node, void*)
{
	node->UploadToVram();
}

void NodeTraverser::Traverse(Node* rootNode, TraverserFunction func, void* data)
{
	if (rootNode == 0) {
		return;
	}

	Node* currentNode = rootNode;
	Node* nextChildNode = currentNode->GetFirstChild();
	bool allNodesProcessed = false;

	while (!allNodesProcessed) {
		if (nextChildNode == currentNode->GetFirstChild()) {
			func(currentNode, data);
		}
        const bool allCurrentNodeChildNodesProcessed = (nextChildNode == 0);

        if (allCurrentNodeChildNodesProcessed) {
            if (currentNode == rootNode) {
                allNodesProcessed = true;
            }
            else {
                nextChildNode = currentNode->GetNextSibling();
            }
            currentNode = currentNode->GetParent();
        }
        else {
            currentNode = nextChildNode;
            nextChildNode = currentNode->GetFirstChild();
        }
    }
}