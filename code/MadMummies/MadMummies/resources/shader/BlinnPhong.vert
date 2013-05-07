#version 330

in vec3 position;
out vec3 normal;
out vec4 ambient, diffuse;

uniform mat4 mvp;

void main()
{
	gl_Position = mvp * vec4(position, 1.0);
	//gl_Position = vec4(position, 1.0);

	//transform normal to eye space
	normal = normalize(gl_NormalMatrix * gl_Normal);

	lightDir = normalize(vec3(gl_LightSource[0].halfVector.xyz);
	diffuse = gl_FrontMaterial.diffuse * gl_LightSource[0].diffuse;
	ambient = gl_FrontMaterial.ambient * gl_LightSource[0].ambient;
	ambient += gl_LightModel.ambient * gl_FrontMaterial.ambient;

	/*
	varying vec4 diffuse, ambient;
	varying vec 3 normal, lightDir, halfVec;

	main() {
		normal...
		lightDir = normalize(vec3(gl_LightSource[0].halfVector.xyz);
		diffuse = gl_FrontMaterial.diffuse * gl_LightSource[0].diffuse;
		ambient = gl_FrontMaterial.ambient * gl_LightSource[0].ambient;
		ambient += gl_LightModel.ambient * gl_FrontMaterial.ambient;
		gl_Position = ftransform();
	}
	*/
}