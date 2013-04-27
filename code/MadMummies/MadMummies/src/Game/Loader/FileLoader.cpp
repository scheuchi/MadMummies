#include "FileLoader.h"

#include "Engine/Core/Camera.h"
#include "Engine/Core/Cube.h"
#include "Engine/Core/Scene.h"
#include "Engine/Core/Light.h"
#include "Engine/Core/Shader.h"
#include "Engine/Core/Mesh.h"


FileLoader::FileLoader()
{
}

FileLoader::~FileLoader()
{
}

Scene* FileLoader::LoadScene(std::string sceneName)
{
	Scene* scene = new Scene();
	scene->SetScene(scene);

	Mesh* mesh = new Mesh();
	mesh->SetScene(scene);

	Shader* shader = new Shader();
	shader->SetVertexShaderPath(".\\resources\\shader\\SimpleColor.vert");
	shader->SetFragmentShaderPath(".\\resources\\shader\\SimpleColor.frag");
	mesh->SetShader(shader);

	float* positionBuffer = new float[9];
	positionBuffer[0] = -0.3f; positionBuffer[1] = -0.4f; positionBuffer[2] = 0.0f;
	positionBuffer[3] = 0.5f; positionBuffer[4] = -0.4f; positionBuffer[5] = 0.0f;
	positionBuffer[6] = 0.0f; positionBuffer[7] = 0.3f; positionBuffer[8] = 0.0f;
	//glVertex3f(-5.0f, -4.0f, 0.0f); 
	//glVertex3f(5.0f, -4.0f, 0.0f); 
	//glVertex3f(0.0f, 4.5f, 0.0f);
	unsigned int * indexBuffer = new unsigned int[3];
	indexBuffer[0] = 0; indexBuffer[1] = 1; indexBuffer[2] = 2;
	VertexBufferObject* vbo = new VertexBufferObject(positionBuffer, 0, 0, indexBuffer, 3, 3);
	mesh->SetVertexBufferObject(vbo);

	scene->AddChild(mesh);
	
	/*
	Cube* cube = new Cube();
	scene->AddChild(cube);

	Light* light = new Light();
	scene->AddChild(light);
	*/

	Camera* camera = new Camera();
	camera->SetScene(scene);
	camera->SetViewport(0, 0, 500, 500);
	scene->AddChild(camera);

	return scene;
}