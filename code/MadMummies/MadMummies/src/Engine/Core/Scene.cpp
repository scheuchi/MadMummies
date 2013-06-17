#include "Scene.h"

#include "glew.h"
#include <iostream>

#include "Shader.h"
#include "Engine\Physics\PhysicsWorld.h"


Scene::Scene() : m_cameraList(), m_activeCamera(0), m_lightList(), m_physicsWorld(0)
{
	m_physicsWorld = new PhysicsWorld();
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

void Scene::RemoveLight(Light* light)
{
	std::vector<Light*>::iterator it;

	for (it = m_lightList.begin(); it != m_lightList.end(); it++) {
		if (*it == light) {
			m_lightList.erase(it);
			return;
		}
	}
}

void Scene::ActivateLights(Shader* shader)
{
	std::vector<Light*>::iterator it;
	unsigned int i;

	for (it = m_lightList.begin(), i = 0; it != m_lightList.end(); it++, ++i) {
		(*it)->Activate(shader, i);
	}
}