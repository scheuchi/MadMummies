#version 330

smooth in vec2 vTexCoord;
layout(location = 0) out vec4 fragColor;
uniform sampler2D colorTexture;

void main()
{
	fragColor = texture(colorTexture, vTexCoord);
}