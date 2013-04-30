#pragma once

#include "Engine/Behavior/Behavior.h"
#include "Engine/Util/UserInputServer.h"


class Node;
class Transformable;

class MeshBehavior : public Behavior, KeyInputListener
{
	typedef Behavior Base;

#define ROTATE_FACT 1.0f
#define SCALE_FACT 1.1f
#define TRANSLATE_FACT 1.0f


	enum coord {
		x = 0,
		y = 1,
		z = 2};

public:
	MeshBehavior();
	virtual ~MeshBehavior();

	virtual void OnSetNode();
	virtual void Update(double deltaT);

	virtual void KeyPressed(int key);

private:
	float m_scale[3];
	float m_rotate[3];
	float m_translate[3];

	Transformable* m_transformable;
};
