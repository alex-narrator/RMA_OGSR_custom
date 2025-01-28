//////////////////////////////////////////////////////////////////////////////////////////
// NV Shader by LVutner (basing on yaz NV)
// Last edit: 5:12 (22.05.19)
//////////////////////////////////////////////////////////////////////////////////////////

uniform float4 pnv_color; 	//r, g, b, brightness
uniform float4 pnv_params; 	//noise, scanlines, vignette size, work area radius

///////////////////////////////////////////////////////
// ASPECT RATIO CORRECTION (Credit LVutner)
///////////////////////////////////////////////////////
float2 aspect_ratio_correction(float2 tc)
{
    tc.x -= 0.5f;
    tc.x *= (screen_res.x / screen_res.y);
    tc.x += 0.5f;
    return tc;
}

float4 calc_vignette(float2 tc0, float vignette_size)
{
	return smoothstep(0.55f, 0.4f, vignette_size * distance(aspect_ratio_correction(tc0), float2(0.5f, 0.5f)));
}

float calc_work_area(float2 tc0, float work_area_radius)
{
	return step(distance(aspect_ratio_correction(tc0), float2(0.5f, 0.5f)), work_area_radius);
}

float4 calc_night_vision_effect(float2 tc0, float4 color)
{
    if (calc_work_area(tc0, pnv_params.w) != 1)
	{
		return color;
	}
	
	float lum = dot(color.rgb, float3(0.3f, 0.38f, 0.22f) * pnv_color.w); // instead of float3 use LUMINANCE_floatTOR in stalker
    color.rgb = pnv_color.xyz * lum;

    // cheap noise function
    float noise = frac(sin(dot(tc0, float2(12.0, 78.0) + (timers.x * 1.17f))) * 43758.0);

//////////////////////////////////////////////////////////////////////////////////////////
// scanlines
    color += pnv_params.y * sin(tc0.y * screen_res.y * 2.0);
//////////////////////////////////////////////////////////////////////////////////////////
// noise
    color += noise * pnv_params.x;
//////////////////////////////////////////////////////////////////////////////////////////
// vignette
	color *= calc_vignette(tc0, pnv_params.z);

    return color;
}
