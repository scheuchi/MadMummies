#pragma once

#include "glew.h"

#include <iostream>
#include <map>
#include <vector>

class KeyInputListener
{
public:
	//virtual void KeyDown(int key) { }
	virtual void KeyPressed(int key/*, float duration*/) { }
	//virtual void KeyUp(int key, float duration) { }
};

class MouseInputListener
{
public:
	virtual void OnMouseButton(int btn, int state) { };
	virtual void OnMouseMoved(int x, int y) { };
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

	void RegisterMouseInputListener(MouseInputListener* listener);
	void UnregisterMouseInputListener(MouseInputListener* listener);
	
private:
	UserInputServer();
	~UserInputServer();

	static void OnMouseButton(int btn, int state);
	static void OnMouseMoved(int x, int y);
	
	static UserInputServer* m_self;
	std::multimap<int,KeyInputListener*> m_keyMap;
	std::vector<MouseInputListener*> m_mouseVector;
};
