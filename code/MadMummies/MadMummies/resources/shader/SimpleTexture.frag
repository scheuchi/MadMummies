#version 330

layout(location = 0) out vec4 fragColor;

void main()
{
	fragColor = vec4(0.4, 0.5, 0.3, 1.0);
	//gl_FragData[0] = vec4(0.4, 0.5, 0.0, 1.0);
}