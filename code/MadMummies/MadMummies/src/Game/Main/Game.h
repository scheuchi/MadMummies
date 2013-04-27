#pragma once

class Scene;
class Loader;
class NodeTraverser;


class Game
{
public:
	Game();
	virtual ~Game();

	void Init();
	void Update(double deltaT);
	void Render();
	void Cleanup();

private:
	Scene* m_scene;
	Loader* m_loader;
	NodeTraverser* m_traverser;
};

