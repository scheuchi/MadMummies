#include "UserInputServer.h"

#include <glfw.h>

UserInputServer* UserInputServer::m_self = 0;

UserInputServer* UserInputServer::GetInstance()
{
	if (m_self == 0) {
		m_self = new UserInputServer();
		glfwSetMousePosCallback(OnMouseMoved);
		glfwSetMouseButtonCallback(OnMouseButton);
	}
	return m_self;
}

void UserInputServer::Destroy()
{
	if (m_self != 0) {
		delete m_self;
		m_self = 0;
	}
}

UserInputServer::UserInputServer() : m_keyMap(), m_mouseVector()
{
}

UserInputServer::~UserInputServer()
{
	m_keyMap.clear();
	m_mouseVector.clear();
}

void UserInputServer::Update(double deltaT)
{
	std::multimap<int,KeyInputListener*>::iterator it = m_keyMap.begin();
	int lastKey = -1;
	int key = 0;
	int keyStatus;
	for(; it != m_keyMap.end(); ++it) {
		key = (*it).first;
		if (key != lastKey) {
			keyStatus = glfwGetKey(key);
			lastKey = key;
		}
		if (keyStatus == GLFW_PRESS) {
			(*it).second->KeyPressed(key);
		}
	}
}

void UserInputServer::RegisterKeyInputListener(KeyInputListener* listener, int key)
{
	m_keyMap.insert(std::pair<int,KeyInputListener*>(key, listener));
}

void UserInputServer::UnregisterKeyInputListener(KeyInputListener* listener, int key)
{
	std::multimap<int,KeyInputListener*>::iterator it = m_keyMap.find(key);
	while (((*it).second == listener) && ((*it).first == key) && (it != m_keyMap.end())) {
		m_keyMap.erase(it);
		++it;
	}
}

void UserInputServer::RegisterMouseInputListener(MouseInputListener* listener)
{
	m_mouseVector.push_back(listener);
}

void UserInputServer::UnregisterMouseInputListener(MouseInputListener* listener)
{
	std::vector<MouseInputListener*>::iterator it = m_mouseVector.begin();
	while (it != m_mouseVector.end()) {
		if ((*it) == listener) {
			m_mouseVector.erase(it);
			return;
		}
		++it;
	}
}

void UserInputServer::OnMouseButton(int btn, int state)
{
	std::vector<MouseInputListener*>::iterator it = m_self->m_mouseVector.begin();
	while (it != m_self->m_mouseVector.end()) {
		(*it)->OnMouseButton(btn, state);
		++it;
	}
}

void UserInputServer::OnMouseMoved(int x, int y)
{
	std::vector<MouseInputListener*>::iterator it = m_self->m_mouseVector.begin();
	while (it != m_self->m_mouseVector.end()) {
		(*it)->OnMouseMoved(x, y);
		++it;
	}
}

