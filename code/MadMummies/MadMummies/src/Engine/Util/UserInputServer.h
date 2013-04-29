#pragma once

#include "glew.h"

#include <iostream>
#include <map>

class KeyInputListener
{
public:
	//virtual void KeyDown(int key) { }
	virtual void KeyPressed(int key/*, float duration*/) { }
	//virtual void KeyUp(int key, float duration) { }	
};

class UserInputServer
{
public:
	typedef void (*pFnKeyInputCallback)(int key, enum KeyState, double duration);

	static UserInputServer* GetInstance();
	static void Destroy();

	void Update(double deltaT);

	void RegisterKeyInputListener(KeyInputListener* listener, int key);
	void UnregisterKeyInputListener(KeyInputListener* listener, int key);
	
private:
	UserInputServer();
	~UserInputServer();
	
	static UserInputServer* m_self;
	std::multimap<int,KeyInputListener*> m_keyMap;
};
