#pragma once


class GraphicsResource
{	

public:
	GraphicsResource();
	virtual ~GraphicsResource();

	virtual void UploadToVram();
	virtual void UnloadFromVram();
	virtual void Activate();
	virtual void Deactivate();

	virtual bool IsUploaded() { return m_isUploaded; }
	virtual bool IsActive() { return m_isActive; }

private:
	bool m_isUploaded;
	bool m_isActive;
};