#pragma once

#include <map>



class Texture;
class string;


class ResourceCache
{
public:
	static ResourceCache* GetInstance();

	Texture* RequestTexture(const char* path);

private:
	ResourceCache();
	~ResourceCache();

	static ResourceCache* m_self;

	std::map<std::string, Texture*> m_textureMap;
};

