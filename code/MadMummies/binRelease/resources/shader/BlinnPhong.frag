#version 330

layout(location = 0) out vec4 fragColor;

void main()
{
	fragColor = vec4(0.4, 0.5, 0.3, 1.0);
	//gl_FragData[0] = vec4(0.4, 0.5, 0.0, 1.0);

	/*
	varying vec4 diff, amb;
	varying vec3 normal, lightdir, halfvec;

	main{
		vec3 n, halfV;
		float NdotL, NdotHV;

		vec4 color = ambient;
		n = normalize(normal);
		NdotL = max(dot(n, lightDir), 0.0);
		
		if(NdotL > 0.0){
			color += diffuse * NdotL;
			halfV = normalize(halfVector);
			NdotHV = max(dot(n, halfV), 0.0);
			color += gl_FrontMaterial.specular * gl_LightSource[0].specular * pow(NdotHV, gl_FrontMaterial.shininess);
		}
		gl_FragColor = color;

		tu-clausthal.de

		}
	*/
}

void directionalLight(in int i, in vec3 normal)
{
	float nDotVP;	//normal * lightDirection
	float nDotHV;	//normal * lightHalfVector
	float pf;		//power factor

	nDotVP = max(0.0, dot(normal, normalize(vec3 (gl_LightSource[i].position))));
	nDotHV = max(0.0, dot(normal, vec3 (gl_LightSource[i].halfVector)));

	if (nDotVP == 0.0)
	{
		pf = 0.0;
	} else {
		pf = pow(nDotHV, gl_FrontMaterial.shininess);
	}

	ambient += gl_LightSource[i].ambient;
	diffuse += gl_LightSource[i].diffuse * nDotVP;
	specular += gl_LightSource[i].specular * pf;
}