#version 330

in vec3 position;

uniform mat4 mvp;

void main()
{
	gl_Position = mvp * vec4(position, 1.0);
	//gl_Position = vec4(position, 1.0);
}