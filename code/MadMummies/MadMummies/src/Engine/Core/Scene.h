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

private:
	void AddCamera(Camera* camera) { m_cameraList.push_back(camera); }
	void RemoveCamera(Camera* camera);


	std::vector<Camera*> m_cameraList;

};

