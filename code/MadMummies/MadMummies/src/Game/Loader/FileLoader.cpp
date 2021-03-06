#include "FileLoader.h"

#include "Engine/Core/Camera.h"
#include "Engine/Core/Cube.h"
#include "Engine/Core/Scene.h"
#include "Engine/Core/Light.h"
#include "Engine/Core/Shader.h"
#include "Engine/Core/Mesh.h"
#include "Engine/Core/Group.h"
#include "Engine/Util/ResourceCache.h"


#include "Game/Behavior/CameraBehavior.h"
#include "Game/Behavior/DuckBehavior.h"
#include "Game/Behavior/WallBehavior.h"

#include <assimp/Importer.hpp> // C++ importer interface
#include <assimp/scene.h> // Output data structure
#include <assimp/postprocess.h> // Post processing flags


FileLoader::FileLoader()
{
}

FileLoader::~FileLoader()
{
}

Scene* FileLoader::LoadScene(std::string sceneName)
{
	Assimp::Importer importer;
	const aiScene* assimpScene = importer.ReadFile(".\\resources\\meshes\\duckieMaze2.dae", aiProcess_Triangulate);

	if(assimpScene == 0) {
		std::cout << importer.GetErrorString() << std::endl;
		system("pause");
		exit(-1);
	}

	if (assimpScene->mRootNode == 0) {
		std::cout << "Imported file doesn't contain nodes." << std::endl;
		system("pause");
		exit(-1);
	}

	Scene* scene = 0;
	CreateNode(assimpScene, scene, assimpScene->mRootNode, scene);

	// -------------------------------------------------------------------------------

	assimpScene = importer.ReadFile(".\\resources\\meshes\\mummy.dae", aiProcess_Triangulate);

	if(assimpScene == 0) {
		std::cout << importer.GetErrorString() << std::endl;
		system("pause");
		exit(-1);
	}

	if (assimpScene->mRootNode == 0) {
		std::cout << "Imported file doesn't contain nodes." << std::endl;
		system("pause");
		exit(-1);
	}

	CreateNode(assimpScene, scene, assimpScene->mRootNode, scene);

	// -------------------------------------------------------------------------------

	//--------------------------------------------------------

	Group* cameraGroup = new Group;
	cameraGroup->SetScene(scene);
	scene->AddChild(cameraGroup);

	Camera* camera = new Camera();
	camera->SetScene(scene);
	camera->SetViewport(0, 0, 1024, 768);
	
	glm::mat4 cameraTransformation(1.0f, 0.0f, 0.0f, 0.0f,
				0.0f, 0.68f, -0.73f, 0.0f,
				0.0f, 0.73f, 0.68f, 0.0f,
				0.0f, -102.0f, -60.0f, 10.0f);
	camera->SetLocalMatrix(cameraTransformation);
	camera->LookAt(glm::vec3(0.0f,1.0f,20.0f),glm::vec3(0.0f,0.0f,-1.0f));

	camera->SetPosition(glm::vec3(0.0f, 3.0f, 0.0f));

	camera->SetNearPlane(0.1f);
	camera->SetFarPlane(1000.0f);
	camera->SetFieldOfView(60.0f);

	camera->SetBehavior(new CameraBehavior);
	
	cameraGroup->AddChild(camera);

	//--------------------------------------------------------

	Group* lightGroup = new Group;
	cameraGroup->SetScene(scene);
	scene->AddChild(lightGroup);

	// light: color, direction, intensity
	Light* light = new Light(glm::vec3(1.0f, 0.2f, 0.8f), glm::vec3(0.8f, 0.5f, 0.7f), 0.4f);
	light->SetScene(scene);
	lightGroup->AddChild(light);

	return scene;
}


void FileLoader::CreateNode(const aiScene* assimpScene, Scene*& scene, aiNode* assimpNode, Node* parent)
{
	if (parent == 0) {
		scene = CreateScene(assimpScene, assimpNode);
		parent = scene;
	} else if (assimpNode->mNumMeshes > 0) {
		Mesh* newMesh = CreateMesh(assimpScene, assimpNode, scene);
		parent->AddChild(newMesh);
		parent = newMesh;
		if (std::strcmp(assimpNode->mName.C_Str(),"myDuckie_LOD3sp") == 0) {
			newMesh->SetBehavior(new DuckBehavior());
		} else {
			newMesh->SetBehavior(new WallBehavior());
		}
	} else {
		Group* newGroup = CreateGroup(assimpScene, assimpNode, scene);
		parent->AddChild(newGroup);
		parent = newGroup;
	}

	for(unsigned int i = 0; i < assimpNode->mNumChildren; ++i) {
		CreateNode(assimpScene, scene, assimpNode->mChildren[i], parent);
	}
}


Scene* FileLoader::CreateScene(const aiScene* assimpScene, aiNode* assimpNode)
{
	Scene* scene = new Scene;
	scene->SetScene(scene);

	aiMatrix4x4 mat = assimpNode->mTransformation;

	glm::mat4 transformation(	mat.a1, mat.b1, mat.c1, mat.d1,
								mat.a2, mat.b2, mat.c2, mat.d2,
								mat.a3, mat.b3, mat.c3, mat.d3,
								mat.a4, mat.b4, mat.c4, mat.d4);
	scene->SetLocalMatrix(transformation);

	return scene;
}

Group* FileLoader::CreateGroup(const aiScene* assimpScene, aiNode* assimpNode, Scene* paramScene)
{
	Group* group = new Group;
	group->SetScene(paramScene);

	aiMatrix4x4 mat = assimpNode->mTransformation;
	glm::mat4 transformation(	mat.a1, mat.b1, mat.c1, mat.d1,
								mat.a2, mat.b2, mat.c2, mat.d2,
								mat.a3, mat.b3, mat.c3, mat.d3,
								mat.a4, mat.b4, mat.c4, mat.d4);
	group->SetLocalMatrix(transformation);

	
	return group;
}

Mesh* FileLoader::CreateMesh(const aiScene* assimpScene, aiNode* assimpNode, Scene* paramScene)
{
	Mesh* mesh = new Mesh;
	mesh->SetScene(paramScene);

	unsigned int meshIdx = assimpNode->mMeshes[0];
	unsigned int numOfVertices = assimpScene->mMeshes[meshIdx]->mNumVertices;
	aiMesh* assimpMesh = assimpScene->mMeshes[meshIdx];

	float* positionBuffer = 0;
	float* normalBuffer = 0;
	float* uvBuffer = 0;

	//create vertex position array
	if (assimpMesh->HasPositions()) {
		positionBuffer = new float[numOfVertices * 3];
		for(unsigned int i = 0; i < numOfVertices; i++) {
			positionBuffer[i*3] = assimpMesh->mVertices[i].x;
			positionBuffer[i*3+1] = assimpMesh->mVertices[i].y;
			positionBuffer[i*3+2] = assimpMesh->mVertices[i].z;
		}
	}

	if (assimpMesh->HasNormals()) {
		normalBuffer = new float[numOfVertices * 3];
		for(unsigned int i = 0; i < numOfVertices; i++) {
			normalBuffer[i*3] = assimpMesh->mNormals[i].x;
			normalBuffer[i*3+1] = assimpMesh->mNormals[i].y;
			normalBuffer[i*3+2] = assimpMesh->mNormals[i].z;
		}
	}

	if (assimpMesh->HasTextureCoords(0)) {
		uvBuffer = new float[numOfVertices * 2];	
		for(unsigned int i = 0; i < numOfVertices; i++) {
			uvBuffer[i*2] = assimpMesh->mTextureCoords[0][i].x;
			uvBuffer[i*2+1] = assimpMesh->mTextureCoords[0][i].y;
		}
	}
	
	VertexBufferObject* vbo = new VertexBufferObject(positionBuffer, normalBuffer, uvBuffer, 0, numOfVertices, 0);
	mesh->SetVertexBufferObject(vbo);
	
	Shader* shader = new Shader();
	if (assimpMesh->HasTextureCoords(0)) {
		shader->SetVertexShaderPath(".\\resources\\shader\\SimpleTexture.vert");
		shader->SetFragmentShaderPath(".\\resources\\shader\\SimpleTexture.frag");

		// todo create materials
		aiMaterial* material = assimpScene->mMaterials[assimpMesh->mMaterialIndex];
		int count = material->GetTextureCount(aiTextureType_DIFFUSE);

		if (count > 0) {
			aiString path;
			material->GetTexture(aiTextureType_DIFFUSE, 0, &path);
			mesh->AddTexture(ResourceCache::GetInstance()->RequestTexture(path.C_Str()));
		}
	} else {
		shader->SetVertexShaderPath(".\\resources\\shader\\SimpleDirectionalLight.vert");
		shader->SetFragmentShaderPath(".\\resources\\shader\\SimpleDirectionalLight.frag");
	}
	mesh->SetShader(shader);

	aiMatrix4x4 mat = assimpNode->mTransformation;
	glm::mat4 transformation(	mat.a1, mat.b1, mat.c1, mat.d1,
								mat.a2, mat.b2, mat.c2, mat.d2,
								mat.a3, mat.b3, mat.c3, mat.d3,
								mat.a4, mat.b4, mat.c4, mat.d4);
	mesh->SetLocalMatrix(transformation);

	return mesh;
}
