#pragma once

#include "Node.h"

#include <glm/glm.hpp>

class Transformable : public Node
{
	typedef Node Base;

public:
	Transformable();
	virtual ~Transformable();

	virtual void Update(double deltaT);
	virtual void Render();

	void SetRotation(glm::vec3& rotation, glm::float_t angle);
	void GetRotation(glm::vec3& rotation, glm::float_t& angle);
	void Rotate(glm::vec3& rotate, glm::float_t angle);

	void SetTranslation(glm::vec3& tranlsation);
	glm::vec3& GetTranslation();
	void Translate(glm::vec3& translate);

	void SetScaling(glm::vec3& scaling);
	glm::vec3& GetScaling();
	void Scale(glm::vec3& scale);

	glm::mat4& GetModelMatrix();

private:
	glm::mat4 m_localMatrix;
	glm::mat4 m_modelMatrix;
	bool m_isLocalMatrixInvalid;
	bool m_isModelMatrixInvalid;
	
	glm::vec3 m_rotation;
	glm::float_t m_rotationAngle;
	glm::vec3 m_translation;
	glm::vec3 m_scaling;
};

