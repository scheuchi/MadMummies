	#version 330

smooth in vec3 vNormal;

layout(location = 0) out vec4 fragColor;

struct SimpleDirectionalLight
{
	vec3 vColor;
	vec3 vDirection;
	float fAmbientIntensity;
};

uniform SimpleDirectionalLight light0;

void main()
{
	vec4 materialColor = vec4(0.4, 0.5, 0.6, 1.0);

	float fDiffuseIntensity = max(0.0, dot(normalize(vNormal), normalize(-light0.vDirection)));
	fragColor = materialColor * vec4(light0.vColor * (light0.fAmbientIntensity + fDiffuseIntensity), 1.0);
}