#include "GraphicsResource.h"
#include <iostream>


GraphicsResource::GraphicsResource() : m_isUploaded(false), m_isActive(false)
{
}

GraphicsResource::~GraphicsResource()
{
}

void GraphicsResource::UploadToVram()
{
	m_isUploaded = true;
}

void GraphicsResource::UnloadFromVram()
{
	m_isUploaded = false;
	m_isActive = false;
}

void GraphicsResource::Activate()
{
	m_isActive = true;
}

void GraphicsResource::Deactivate()
{
	m_isActive = false;
}