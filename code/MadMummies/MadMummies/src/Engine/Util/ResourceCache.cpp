#include "ResourceCache.h"

#include "Engine/Core/Texture.h"
#include "Engine/Util/ImageLoader.h"

#include <sstream>



ResourceCache* ResourceCache::m_self = 0;


ResourceCache* ResourceCache::GetInstance()
{
	if (m_self == 0) {
		m_self = new ResourceCache();
	}
	return m_self;
}


ResourceCache::ResourceCache() : m_textureMap()
{
}


ResourceCache::~ResourceCache()
{
}

Texture* ResourceCache::RequestTexture(const char* path)
{
	int width = 0;
	int height = 0;

	std::string strFileName = path;
	int pos = 0;
	if ((pos = strFileName.find_last_of("/")) != std::string::npos) {
		strFileName = strFileName.substr(pos + 1);
	}

	// check in cache
	std::map<std::string, Texture*>::iterator iter;
	iter = m_textureMap.find(strFileName);

	if (iter != m_textureMap.end()) {
		return iter->second;
	}


	std::stringstream relativePath;
	relativePath.clear();
	relativePath << "resources//images//" << strFileName.c_str() << "\0";

	unsigned char* data;
	bool success = ImageLoader::LoadImage(relativePath.str().c_str(), width, height, data);
	if (success) {
		Texture* tex = new Texture();
		tex->SetBitmap(new Bitmap(width, height, data));
		tex->SetTextureUnit(0);
		m_textureMap.insert(std::pair<std::string,Texture*>(strFileName,tex));
		return tex;
	}

	return 0;
}

