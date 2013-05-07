#pragma once

#include "Transformable.h"
#include "Engine/Core/Camera.h"
#include "Engine/Core/Light.h"

#include <vector>

class Shader;


class Scene : public Transformable
{
	friend class Camera;
	friend class Light;
	typedef Transformable Base;

public:
	Scene();
	virtual ~Scene();
	
	virtual void Update(double deltaT);
	virtual void Render();

	const std::vector<Camera*>& GetCameraList() { return m_cameraList; }

	Camera* GetActiveCamera() { return m_activeCamera; }
	void ActivateLights(Shader* shader);

private:
	void AddCamera(Camera* camera) { m_cameraList.push_back(camera); }
	void RemoveCamera(Camera* camera);
	void SetActiveCamera(Camera* camera) { m_activeCamera = camera; }

	void AddLight(Light* light) { m_lightList.push_back(light); }
	void RemoveLight(Light* light);

	std::vector<Camera*> m_cameraList;
	std::vector<Light*> m_lightList;
	Camera* m_activeCamera;
};

