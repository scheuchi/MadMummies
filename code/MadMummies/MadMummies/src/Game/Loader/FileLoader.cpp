#include "FileLoader.h"

#include "Engine/Core/Camera.h"
#include "Engine/Core/Cube.h"
#include "Engine/Core/Scene.h"
#include "Engine/Core/Light.h"
#include "Engine/Core/Shader.h"
#include "Engine/Core/Mesh.h"

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
	Scene* scene = new Scene();
	//scene->SetScene(scene);

	Mesh* mesh = new Mesh();
	//mesh->SetScene(scene);

	Assimp::Importer importer;
	
	Shader* shader = new Shader();
	shader->SetVertexShaderPath(".\\resources\\shader\\SimpleColor.vert");
	shader->SetFragmentShaderPath(".\\resources\\shader\\SimpleColor.frag");
	mesh->SetShader(shader);

	const aiScene* impScene = importer.ReadFile(".\\resources\\meshes\\rubberDuck.dae", aiProcess_Triangulate);
	if(impScene == NULL) {
		std::cout << importer.GetErrorString() << std::endl;
		exit(-1);
	}
	
	unsigned int noOfVertices = impScene->mMeshes[0]->mNumVertices;

	//create vertex position array
	float* positionBuffer = new float[noOfVertices*3];
	float* normalBuffer = new float[noOfVertices*3];
	float* uvBuffer = new float[noOfVertices*2];

	
	for(unsigned int i = 0; i < noOfVertices; i++) {		
		positionBuffer[i*3] = impScene->mMeshes[0]->mVertices[i].x;
		positionBuffer[i*3+1] = impScene->mMeshes[0]->mVertices[i].y;
		positionBuffer[i*3+2] = impScene->mMeshes[0]->mVertices[i].z;
		normalBuffer[i*3] = impScene->mMeshes[0]->mNormals[i].x;
		normalBuffer[i*3+1] = impScene->mMeshes[0]->mNormals[i].y;
		normalBuffer[i*3+2] = impScene->mMeshes[0]->mNormals[i].z;
		uvBuffer[i*2] = impScene->mMeshes[0]->mTextureCoords[0][i].x;
		uvBuffer[i*2+1] = impScene->mMeshes[0]->mTextureCoords[0][i].y;
	}

	//(float* positionBuffer, float* normalBuffer, unsigned int* indexBuffer, float* uvBuffer, unsigned int vertexCount, unsigned int indexCount)
	VertexBufferObject* vbo = new VertexBufferObject(positionBuffer, normalBuffer, 0, uvBuffer, noOfVertices, 0);
	mesh->SetVertexBufferObject(vbo);

	scene->AddChild(mesh);
	
	/*
	Cube* cube = new Cube();
	scene->AddChild(cube);

	Light* light = new Light();
	scene->AddChild(light);
	*/

	Camera* camera = new Camera();
	//camera->SetScene(scene);
	camera->SetViewport(0, 0, 500, 500);
	scene->AddChild(camera);

	return scene;
}