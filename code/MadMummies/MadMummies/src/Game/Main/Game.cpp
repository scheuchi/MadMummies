#include "Game.h"

#include "Engine/Util/Util.h"
#include "Game/Loader/FileLoader.h"
#include "Game/Loader/DummyLoader.h"
#include "Engine/Core/NodeTraverser.h"
#include "Engine/Core/Scene.h"
#include "Engine/Util/UserInputServer.h"

Game::Game(void) : m_scene(0), m_loader(0), m_traverser(0)
{
}


Game::~Game(void)
{	
}

void Game::Init()
{
	//m_loader = new FileLoader();
	m_loader = new DummyLoader();
	m_scene = m_loader->LoadScene("dummy");
	m_traverser = new NodeTraverser();
	m_traverser->Traverse(m_scene, NodeTraverser::UploadToVram, 0);
}

void Game::Update(double deltaT)
{
	UserInputServer::GetInstance()->Update(deltaT);

	m_traverser->Traverse(m_scene, NodeTraverser::UpdateNode, &deltaT);
}

void Game::Render()
{
	m_traverser->Traverse(m_scene, NodeTraverser::UpdateModelMatrix, 0);

	const std::vector<Camera*> cameraList = m_scene->GetCameraList();
	std::vector<Camera*>::const_iterator it;
	for (it = cameraList.begin(); it != cameraList.end(); ++it) {
		Camera* cam = *it;
		cam->Activate();
		m_traverser->Traverse(m_scene, NodeTraverser::RenderNode, 0);
	}	
}

void Game::Cleanup()
{
}