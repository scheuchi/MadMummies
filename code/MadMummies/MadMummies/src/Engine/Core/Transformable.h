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

	void SetRotation(glm::vec3& rotation);
	glm::vec3& GetRotation();
	void Rotate(glm::vec3& rotate);

	void SetPosition(glm::vec3& position);
	glm::vec3& GetPosition();
	void Translate(glm::vec3& translate);

	void SetScale(glm::vec3& scale);
	glm::vec3& GetScale();
	void Scale(glm::vec3& scale);

	virtual glm::mat4 GetModelMatrix();
	virtual void UpdateModelMatrix();
	
	glm::mat4& GetLocalMatrix();
	void SetLocalMatrix(glm::mat4& localMatrix);

private:
	void InvalidateLocalMatrix(bool invalidate) { m_isLocalMatrixInvalid = invalidate; }
	bool IsLocalMatrixInvalid() { return m_isLocalMatrixInvalid; }
	
	glm::mat4 m_localMatrix;
	glm::mat4 m_modelMatrix;
	bool m_isLocalMatrixInvalid;
	
	glm::vec3 m_rotation;
	glm::vec3 m_position;
	glm::vec3 m_scale;
};

