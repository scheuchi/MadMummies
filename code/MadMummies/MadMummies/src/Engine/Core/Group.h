#pragma once

#include "Transformable.h"


class Group : public Transformable
{
	typedef Transformable Base;

public:
	Group(void);
	virtual ~Group(void);
};