#include "Scene.h"

#include "glew.h"
#include <iostream>


Scene::Scene() : m_cameraList()
{
}

Scene::~Scene()
{
}

void Scene::Update(double deltaT)
{
	Base::Update(deltaT);
}

void Scene::Render()
{
	Base::Render();
}

void Scene::RemoveCamera(Camera* camera)
{
	std::vector<Camera*>::iterator it;

	for (it = m_cameraList.begin(); it != m_cameraList.end(); it++) {
		if (*it == camera) {
			m_cameraList.erase(it);
			return;
		}
	}
}