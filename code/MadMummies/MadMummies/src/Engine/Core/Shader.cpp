#include "Shader.h"
#include <iostream>
#include <fstream>
#include <sstream>



Shader::Shader() : 	m_handleVertexShader(0), m_handleFragmentShader(0), m_handleShaderProgram(0),
	m_pathFragmentShader(), m_pathVertexShader()
{
}

Shader::~Shader()
{
	UnloadFromVram();
}

void Shader::UploadToVram()
{
	if (!IsUploaded()) {
		CompileShader(m_pathVertexShader, GL_VERTEX_SHADER, m_handleVertexShader);
		CompileShader(m_pathFragmentShader, GL_FRAGMENT_SHADER, m_handleFragmentShader);	
		CreateShaderProgram();
		Base::UploadToVram();
	}
}

void Shader::UnloadFromVram()
{
	if (IsUploaded()) {
		glDeleteProgram(m_handleShaderProgram);
		glDeleteShader(m_handleVertexShader);
		glDeleteShader(m_handleFragmentShader);
		Base::UnloadFromVram();
	}
}

void Shader::Activate()
{
	if (IsUploaded() && (!IsActive())) {		
		Base::Activate();
	}
}

void Shader::Deactivate()
{
	if (IsActive()) {
		Base::Deactivate();
	}
}

void Shader::CompileShader(std::string shaderPath, 	GLenum shaderType, GLuint& handle)
{
	std::ifstream shaderFile(shaderPath);
 
	if (shaderFile.good())
	{
		// (1) read file into string
		std::string code = std::string(std::istreambuf_iterator<char>(shaderFile), std::istreambuf_iterator<char>());
		shaderFile.close();
 
		// (2) generate shader handle
		handle = glCreateShader(shaderType);
 
		if (handle == 0)
		{
			std::cout << "Failed to create shader" << std::endl;
			system("PAUSE");
			exit(-1);
		}
 
		// (3) compile shader
		auto codePtr = code.c_str();
		glShaderSource(handle, 1, &codePtr, NULL);
		glCompileShader(handle);
 
		// Testing for compilation errors
		GLint succeded;
		glGetShaderiv(handle, GL_COMPILE_STATUS, &succeded);
 
		if (succeded == GL_FALSE || !glIsShader(handle))
		{
			// read log and output it to std::cout
			GLint logSize;
			glGetShaderiv(handle, GL_INFO_LOG_LENGTH, &logSize);
			auto message = new char[logSize];
 
			glGetShaderInfoLog(handle, logSize, NULL, message);
			std::cout << "Failed to compile shader" << std::endl;
			std::cout << message << std::endl;
			system("PAUSE");
			delete[] message;
			exit(-1);
		}
	}
	else
	{
		std::cout << "Failed to open shader file: " << shaderPath << std::endl;
		system("PAUSE");
		exit(-1);
	}
}

void Shader::CreateShaderProgram()
{
	// Create program
	m_handleShaderProgram = glCreateProgram();
 
	if (m_handleShaderProgram == 0)
	{
		std::cout << "Failed to create shader program" << std::endl;
		system("PAUSE");
		exit(-1);
	}
 
	// Attach shader to program
	glAttachShader(m_handleShaderProgram, m_handleVertexShader);
	glAttachShader(m_handleShaderProgram, m_handleFragmentShader);
 
	// Bind output
	glBindFragDataLocation(m_handleShaderProgram, 0, "fragColor");
 
	// Link programs
	glLinkProgram(m_handleShaderProgram);
 
	// check for errors
	GLint succeded;
	glGetProgramiv(m_handleShaderProgram, GL_LINK_STATUS, &succeded);
 
	if (!succeded)
	{
		// output errors
		GLint logSize;
		glGetProgramiv(m_handleShaderProgram, GL_INFO_LOG_LENGTH, &logSize);
 
		auto message = new char[logSize];
		glGetProgramInfoLog(m_handleShaderProgram, logSize, NULL, message);
 
		std::cout << "Failed to link shader program" << std::endl;
		std::cout << message << std::endl;
		system("PAUSE");
 
		delete[] message;
		exit(-1);
	}
}

GLint Shader::GetAttributeLocation(std::string attributeName)
{
	return glGetAttribLocation(m_handleShaderProgram, attributeName.c_str());
}

GLint Shader::GetUniformLocation(std::string uniformName)
{
	return glGetUniformLocation(m_handleShaderProgram, uniformName.c_str());
}