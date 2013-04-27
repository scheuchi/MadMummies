#include "Game.h"

#include "Engine/Util/Util.h"
#include "Game/Loader/FileLoader.h"
#include "Engine/Core/NodeTraverser.h"
#include "Engine/Core/Scene.h"

Game::Game(void) : m_scene(0), m_loader(0), m_traverser(0)
{
}


Game::~Game(void)
{	
}

void Game::Init()
{
	m_loader = new FileLoader();
	m_scene = m_loader->LoadScene("dummy");
	m_traverser = new NodeTraverser();
	m_traverser->Traverse(m_scene, NodeTraverser::UploadToVram, 0);
}

void Game::Update(double deltaT)
{
	m_traverser->Traverse(m_scene, NodeTraverser::UpdateNode, &deltaT);
}

void Game::Render()
{
	m_traverser->Traverse(m_scene, NodeTraverser::RenderNode, 0);
}

void Game::Cleanup()
{
}