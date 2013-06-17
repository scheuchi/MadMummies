#include "PhysicsWorld.h"

#include <iostream>


void myTickCallback(btDynamicsWorld *world, btScalar timeStep) {
    int numManifolds = world->getDispatcher()->getNumManifolds();
    printf("numManifolds = %d\n",numManifolds);
}

PhysicsWorld::PhysicsWorld() : m_dynamicsWorld(0), m_solver(0), m_collisionConfiguration(0),
		m_dispatcher(0), m_broadphase(0)
{
	Init();
}


PhysicsWorld::~PhysicsWorld()
{
	delete m_dynamicsWorld;
	delete m_solver;
	delete m_collisionConfiguration;
	delete m_dispatcher;
	delete m_broadphase;
}


void PhysicsWorld::AddRigidBody(btRigidBody* rigidBody)
{
	m_dynamicsWorld->addRigidBody(rigidBody, 1, 1);
}

void PhysicsWorld::RemoveRigidBody(btRigidBody* rigidBody)
{
	m_dynamicsWorld->removeRigidBody(rigidBody);
}

void PhysicsWorld::Init()
{
	m_broadphase = new btDbvtBroadphase();
	m_collisionConfiguration = new btDefaultCollisionConfiguration();
	m_dispatcher = new btCollisionDispatcher(m_collisionConfiguration);
	m_solver = new btSequentialImpulseConstraintSolver;
	m_dynamicsWorld = new btDiscreteDynamicsWorld(m_dispatcher, m_broadphase, m_solver, m_collisionConfiguration);

	m_dynamicsWorld->setGravity(btVector3(0, -10, 0));

	m_dynamicsWorld->setInternalTickCallback(myTickCallback);
}

/*
	btCollisionShape* groundShape = new btStaticPlaneShape(btVector3(0,1,0),1);
 
	btCollisionShape* fallShape = new btSphereShape(1);
 
 
	btDefaultMotionState* groundMotionState = new btDefaultMotionState(btTransform(btQuaternion(0,0,0,1),btVector3(0,-1,0)));
	btRigidBody::btRigidBodyConstructionInfo
			groundRigidBodyCI(0,groundMotionState,groundShape,btVector3(0,0,0));
	btRigidBody* groundRigidBody = new btRigidBody(groundRigidBodyCI);
	dynamicsWorld->addRigidBody(groundRigidBody);
 
 
	btDefaultMotionState* fallMotionState =
			new btDefaultMotionState(btTransform(btQuaternion(0,0,0,1),btVector3(0,50,0)));
	btScalar mass = 1;
	btVector3 fallInertia(0,0,0);
	fallShape->calculateLocalInertia(mass,fallInertia);
	btRigidBody::btRigidBodyConstructionInfo fallRigidBodyCI(mass,fallMotionState,fallShape,fallInertia);
	btRigidBody* fallRigidBody = new btRigidBody(fallRigidBodyCI);
	dynamicsWorld->addRigidBody(fallRigidBody);
 
 
	for (int i=0 ; i<300 ; i++) {
			dynamicsWorld->stepSimulation(1/60.f,10);
 
			btTransform trans;
			fallRigidBody->getMotionState()->getWorldTransform(trans);
 
			std::cout << "sphere height: " << trans.getOrigin().getY() << std::endl;
	}

	dynamicsWorld->removeRigidBody(fallRigidBody);
	delete fallRigidBody->getMotionState();
	delete fallRigidBody;
 
	dynamicsWorld->removeRigidBody(groundRigidBody);
	delete groundRigidBody->getMotionState();
	delete groundRigidBody;
 
 
	delete fallShape;

	delete groundShape;
*/


