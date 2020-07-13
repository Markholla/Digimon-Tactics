//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 OC = texture2D( gm_BaseTexture, v_vTexcoord );
	
	float Average = (OC.r + OC.g + OC.b) / 3.0;
	float Alpha = OC.a;
	
	vec4 Color = vec4(Average, Average, Average, Alpha);
	
    gl_FragColor = Color;
}
