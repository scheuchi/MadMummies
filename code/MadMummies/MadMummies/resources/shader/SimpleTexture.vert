#version 330

in vec2 uv;
in vec3 position;
smooth out vec2 vTexCoord;

uniform mat4 mvp;

void main()
{
	vTexCoord = uv;
	gl_Position = mvp * vec4(position, 1.0);
}
