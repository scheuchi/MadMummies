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

	Mesh* mesh = new Mesh();
	Shader* shader = new Shader();
	shader->SetVertexShaderPath(".\\resources\\shader\\SimpleColor.vert");
	shader->SetFragmentShaderPath(".\\resources\\shader\\SimpleColor.frag");
	mesh->SetShader(shader);
	scene->AddChild(mesh);
	
	Cube* cube = new Cube();
	scene->AddChild(cube);

	Light* light = new Light();
	scene->AddChild(light);

	Camera* camera = new Camera();
	camera->SetViewport(0, 0, 500, 500);
	scene->AddChild(camera);

	return scene;
}