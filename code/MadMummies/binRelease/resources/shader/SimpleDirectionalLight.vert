#version 330

in vec3 position;
in vec3 normal;

smooth out vec3 vNormal;

uniform mat4 mvp;
uniform mat3 normalMatrix;

void main()
{
	gl_Position = mvp * vec4(position, 1.0);
	vNormal = normalMatrix * normalize(normal);
}