#include "DummyLoader.h"

#include "Engine/Core/Camera.h"
#include "Engine/Core/Cube.h"
#include "Engine/Core/Scene.h"
#include "Engine/Core/Light.h"
#include "Engine/Core/Shader.h"
#include "Engine/Core/Mesh.h"

#include "Game/Behavior/MeshBehavior.h"
#include "Game/Behavior/CameraBehavior.h"



DummyLoader::DummyLoader()
{
}

DummyLoader::~DummyLoader()
{
}

Scene* DummyLoader::LoadScene(std::string sceneName)
{
	Scene* scene = new Scene();
	scene->SetScene(scene);

	Mesh* mesh = new Mesh();
	mesh->SetScene(scene);
	mesh->SetPosition(glm::vec3(0.0f, 0.0f, -20.0f));
	mesh->SetBehavior(new MeshBehavior());

	Shader* shader = new Shader();
	shader->SetVertexShaderPath(".\\resources\\shader\\SimpleColor.vert");
	shader->SetFragmentShaderPath(".\\resources\\shader\\SimpleColor.frag");
	mesh->SetShader(shader);
	// --------------------------------------------

	float* positionBuffer = new float[9];
	positionBuffer[0] = -20.0f; positionBuffer[1] = 0.0f; positionBuffer[2] = 0.0f;
	positionBuffer[3] = 20.0f; positionBuffer[4] = 0.0f; positionBuffer[5] = 0.0f;
	positionBuffer[6] = 0.0f; positionBuffer[7] = 10.0f; positionBuffer[8] = 0.0f;
	unsigned int * indexBuffer = 0;
	VertexBufferObject* vbo = new VertexBufferObject(positionBuffer, 0, 0, indexBuffer, 3, 0);

	// --------------------------------------------
	mesh->SetVertexBufferObject(vbo);
	scene->AddChild(mesh);
	
	Camera* camera = new Camera();
	camera->SetScene(scene);
	camera->SetViewport(0, 0, 1024, 768);
	camera->SetPosition(glm::vec3(0.0f, 0.0f, 0.0f));
	camera->LookAt(glm::vec3(0.0f,1.0f,0.0f),glm::vec3(0.0f,0.0f,-1.0f));
	camera->SetNearPlane(0.1f);
	camera->SetFarPlane(1000.0f);
	camera->SetFieldOfView(60.0f);
	camera->SetBehavior(new CameraBehavior);
	scene->AddChild(camera);

	/*
	Cube* cube = new Cube();
	scene->AddChild(cube);

	Light* light = new Light();
	scene->AddChild(light);
	*/

	return scene;
}