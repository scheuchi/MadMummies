#pragma once

#include "Transformable.h"
#include "Scene.h"


class Camera : public Transformable
{
	typedef Transformable Base;

public:
	Camera();
	virtual ~Camera();

	virtual void Update(double deltaT);
	virtual void OnSetScene();

	void Activate();
	
	void SetViewport(int top, int left, int width, int height) {
		 m_ViewportTop = top; m_ViewportLeft = left;
		 m_ViewportWidth = width; m_ViewportHeight = height;
	}

private:
	int m_ViewportTop, m_ViewportLeft, m_ViewportWidth, m_ViewportHeight;
};

