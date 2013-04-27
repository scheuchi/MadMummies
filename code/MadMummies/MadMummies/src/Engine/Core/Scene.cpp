#include "Scene.h"

#include "glew.h"
#include <iostream>


Scene::Scene()
{
}

Scene::~Scene()
{
}

void Scene::Update(double deltaT)
{
	Base::Update(deltaT);
	std::cout << "Scene" << std::endl;
}

void Scene::Render()
{
	Base::Render();
}