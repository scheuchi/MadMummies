#include "WallBehavior.h"

#include "Engine/Core/Mesh.h"
#include "Engine/Core/Scene.h"
#include "Engine/Physics/PhysicsWorld.h"

#include <btBulletDynamicsCommon.h>


WallBehavior::WallBehavior() : m_wall(0), m_physicsRigidBody(0)
{
}

WallBehavior::~WallBehavior()
{
	if (m_physicsRigidBody != 0) {
		m_wall->GetScene()->GetPhysicsWorld()->RemoveRigidBody(m_physicsRigidBody);
		delete m_physicsRigidBody;
	}
}

void WallBehavior::OnSetNode()
{
	Base::OnSetNode();

	m_wall = dynamic_cast<Mesh*>(Base::GetNode());

	if (m_wall == 0) { return; }

	glm::vec3 size; glm::vec3 center; glm::vec3 halfBox;
	m_wall->GetVertexBufferObject()->GetBoundingBox(size, center, halfBox);

	btCollisionShape* shape = new btBoxShape(btVector3(halfBox.x, halfBox.y, halfBox.z));
	//btCollisionShape* shape = new btSphereShape(0.5);
	btRigidBody::btRigidBodyConstructionInfo bodyCI(0, 0, shape);

	btMatrix3x3 ident;
	ident.setIdentity();
	btTransform trans(ident, btVector3(m_wall->GetModelMatrix()[3][0], m_wall->GetModelMatrix()[3][1],
								m_wall->GetModelMatrix()[3][2]));
	bodyCI.m_startWorldTransform = trans;
	m_physicsRigidBody = new btRigidBody(bodyCI);

	m_wall->GetScene()->GetPhysicsWorld()->AddRigidBody(m_physicsRigidBody);
}

void WallBehavior::Update(double deltaT)
{
	Base::Update(deltaT);
	if (m_wall == 0) { return; }

	//m_wall->Rotate(glm::vec3(0.0f, deltaT * 180, 0.0f));

	btMatrix3x3 ident;
	ident.setIdentity();
	btTransform trans(ident, btVector3(m_wall->GetModelMatrix()[3][0], m_wall->GetModelMatrix()[3][1],
								m_wall->GetModelMatrix()[3][2]));
	m_physicsRigidBody->setWorldTransform(trans);
}
