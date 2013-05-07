/*
 * Copyright 2013
 * Barbara Schwankl
 * Martin Scheuchenegger
 */

#include "glew.h"
#include "glfw.h"

#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <tchar.h>

#include "Game.h"
#include "Engine/Util/Util.h"

void OpenWindow(int width, int height)
{
	int i = 0;
	std::cout << "OpenWindow\n";

	// (1) init glfw
	if (!glfwInit())
	{
		std::cout << "Failed to init glfw" << std::endl;
		system("PAUSE");
		exit(-1);
	}

	///*
	glfwOpenWindowHint(GLFW_OPENGL_VERSION_MAJOR, 3);
	glfwOpenWindowHint(GLFW_OPENGL_VERSION_MINOR, 3);
	glfwOpenWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
	//*/

	Util::DebugInit();

	// Open window
	if(!glfwOpenWindow(
		width, height,      // Width and height of window
		8, 8, 8,			// Number of red, green, and blue bits for color buffer
		8,					// Number of bits for alpha buffer
		24,					// Number of bits for depth buffer (Z-buffer)
		0,					// Number of bits for stencil buffer
		GLFW_WINDOW))		// GLFW_FULLSCREEN / GLFW_WINDOW
	{
		glfwTerminate();
		std::cout << "Failed to open window" << std::endl;
		system("PAUSE");
		exit(-1);
	} 

	// Set window title
	glfwSetWindowTitle("Mad Mummies");

	// Enable sticky keys
	glfwEnable(GLFW_STICKY_KEYS);

	// Disable mouse cursor
	glfwDisable(GLFW_MOUSE_CURSOR);

	// glGenVertexArrays is not working otherwise
	glewExperimental = GL_TRUE;

	GLenum err = glewInit();
	if (err != GLEW_OK) {
		std::cout << glewGetErrorString(err);
	}
	if (glewIsSupported("GL_VERSION_3_3")) {
		std::cout << "OpenGL version 3.3 is supported." << std::endl;
	}
	if(GLEW_ARB_geometry_shader4) {
		std::cout << "Geometry shader are supported." << std::endl;
	}

	Util::DebugRegisterCallback();

}

void MainLoop()
{
	double deltaT;
	double time = glfwGetTime();
	double lastTime = time;
 
	bool running = true;	

	Game* game = new Game;
	game->Init();

	while (running)
	{
		double time = glfwGetTime();
		deltaT = time - lastTime;
		lastTime = time;
 
		running = !glfwGetKey(GLFW_KEY_ESC) && glfwGetWindowParam(GLFW_OPENED);
 
		game->Update(deltaT);
		game->Render();

		glFlush();
		glfwSwapBuffers();
 
		Util::CheckGlError();
	}
 
	game->Cleanup();
	glfwTerminate();
}



int main(int argc, char **argv)
{
	OpenWindow(1024, 768);
	MainLoop();
	return 0;
}

