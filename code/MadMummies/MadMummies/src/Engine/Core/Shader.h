#pragma once

#include "GraphicsResource.h"

#include "glew.h"
#include <iostream>


class Shader : public GraphicsResource
{
	typedef GraphicsResource Base;

public:
	Shader();
	virtual ~Shader();

	virtual void UploadToVram();
	virtual void UnloadFromVram();
	virtual void Activate();
	virtual void Deactivate();

	void SetVertexShaderPath(std::string path) { m_pathVertexShader = path; };
	std::string GetVertexShaderPath() { return m_pathVertexShader; }

	GLint GetAttributeLocation(std::string attributeName);
	GLint GetUniformLocation(std::string uniformName);

	void SetFragmentShaderPath(std::string path) { m_pathFragmentShader = path; };
	std::string GetFragmentShaderPath() { return m_pathFragmentShader; }

private:
	void CompileShader(std::string shaderPath, 	GLenum shaderType, GLuint& handle);
	void CreateShaderProgram();

private:
	GLuint m_handleVertexShader;
	GLuint m_handleFragmentShader;
	GLuint m_handleShaderProgram;

	std::string m_pathVertexShader;
	std::string m_pathFragmentShader;	
};