#pragma once

#include "Transformable.h"
#include "Engine\Core\Camera.h"

#include <vector>


class Scene : public Transformable
{
	friend class Camera;
	typedef Transformable Base;

public:
	Scene();
	virtual ~Scene();
	
	virtual void Update(double deltaT);
	virtual void Render();

	const std::vector<Camera*>& GetCameraList() { return m_cameraList; }

	Camera* GetActiveCamera() { return m_activeCamera; }

private:
	void AddCamera(Camera* camera) { m_cameraList.push_back(camera); }
	void RemoveCamera(Camera* camera);
	void SetActiveCamera(Camera* camera) { m_activeCamera = camera; }

	std::vector<Camera*> m_cameraList;
	Camera* m_activeCamera;
};

