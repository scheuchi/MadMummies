#pragma once

#include <string>

#include "Engine/Loader/Loader.h"

class Scene;
class Group;
class Mesh;
struct aiNode;
struct aiScene;

class FileLoader : public Loader
{
public:
	FileLoader();
	virtual ~FileLoader();

	virtual Scene* LoadScene(std::string sceneName);

private:
	Scene* CreateNode(const aiScene* assimpScene, aiNode* assimpNode, Node* parent, Scene* paramScene);
	Scene* CreateScene(const aiScene* assimpScene, aiNode* assimpNode);
	Group* CreateGroup(const aiScene* assimpScene, aiNode* assimpNode, Scene* paramScene);
	Mesh* CreateMesh(const aiScene* assimpScene, aiNode* assimpNode, Scene* paramScene);
};