#pragma once


 
#include <btBulletDynamicsCommon.h>

class PhysicsWorld
{
public:
	PhysicsWorld();
	~PhysicsWorld();
	
	void AddRigidBody(btRigidBody* rigidBody);
	void RemoveRigidBody(btRigidBody* rigidBody);

	btDiscreteDynamicsWorld* GetNative() { return m_dynamicsWorld; }

private:
	void Init();

	btBroadphaseInterface* m_broadphase;
	btDefaultCollisionConfiguration* m_collisionConfiguration;
	btCollisionDispatcher* m_dispatcher;
	btSequentialImpulseConstraintSolver* m_solver;
	btDiscreteDynamicsWorld* m_dynamicsWorld;
};



