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
	void CreateNode(const aiScene* assimpScene, Scene*& scene, aiNode* assimpNode, Node* parent);
	Scene* CreateScene(const aiScene* assimpScene, aiNode* assimpNode);
	Group* CreateGroup(const aiScene* assimpScene, aiNode* assimpNode, Scene* paramScene);
	Mesh* CreateMesh(const aiScene* assimpScene, aiNode* assimpNode, Scene* paramScene);
};