#pragma once

#include "Engine/Core/Transformable.h"

#include "glew.h"

class Shader;

class Light : public Transformable
{
	typedef Transformable Base;

public:
	Light();
	Light(glm::vec3 color, glm::vec3 direction, float ambientIntensity);
	virtual ~Light();

	virtual void Update(double deltaT);
	virtual void OnSetScene();

	void Activate(Shader* shader, unsigned int id);

private:
	glm::vec3 m_color;
	glm::vec3 m_direction;
	glm::vec3 m_mvDirection;
	float m_ambientIntensity;
};