//////////////////////////////////////////////////////////////////////////////////////////
// NV Shader by LVutner (basing on yaz NV)
// Last edit: 5:12 (22.05.19)
//////////////////////////////////////////////////////////////////////////////////////////

uniform float4 pnv_color; 	//r, g, b, brightness
uniform float4 pnv_params; 	//noise, scanlines, vignette size, flickering
uniform float4 pnv_params_2;//tube num, work area radius

#define FLICKERING_FREQ 60.0

#define single_tube_centered float2(0.5f, 0.5f) 		// Offset for single tube centered

#define dual_tube_offset_1 float2(0.25f, 0.5f)			// Offset for dual tube left eye
#define dual_tube_offset_2 float2(0.75f, 0.5f)			// Offset for dual tube right eye

#define quad_tube_offset_1 float2(0.05f, 0.5f)			// Offset for quad tube left outer tube
#define quad_tube_offset_2 float2(0.3f, 0.5f)			// Offset for quad tube left inner tube
#define quad_tube_offset_3 float2(0.7f, 0.5f)			// Offset for quad tube right inner tube
#define quad_tube_offset_4 float2(0.95f, 0.5f)			// Offset for quad tube right outer tube

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

/* float4 calc_vignette(float2 tc0, float vignette_size, float tube_num)
{
	float4 result = float4(0.0f, 0.0f, 0.0f, 0.0f);
	if (tube_num == 1)
	{
		result = smoothstep(0.55f, 0.4f, vignette_size * distance(aspect_ratio_correction(tc0), single_tube_centered));
	}
	if (tube_num == 2)
	{
		result = smoothstep(0.55f, 0.4f, vignette_size * distance(aspect_ratio_correction(tc0), dual_tube_offset_1));
		result += smoothstep(0.55f, 0.4f, vignette_size * distance(aspect_ratio_correction(tc0), dual_tube_offset_2));
	}
	if (tube_num == 4)
	{
		result = smoothstep(0.55f, 0.4f, vignette_size * distance(aspect_ratio_correction(tc0), quad_tube_offset_1));
		result += smoothstep(0.55f, 0.4f, vignette_size * distance(aspect_ratio_correction(tc0), quad_tube_offset_2));
		result += smoothstep(0.55f, 0.4f, vignette_size * distance(aspect_ratio_correction(tc0), quad_tube_offset_3));
		result += smoothstep(0.55f, 0.4f, vignette_size * distance(aspect_ratio_correction(tc0), quad_tube_offset_4));
	}	
	return result;	
} */
float calc_vignette (float2 tc0, float vignette_amount, float tube_num, float tube_radius)
{
	float vignette;
	float2 corrected_texturecoords = aspect_ratio_correction(tc0);
		
	if (tube_num == 1)
	{
		float gen1_vignette = smoothstep(tube_radius,tube_radius-vignette_amount, distance(corrected_texturecoords,single_tube_centered));
		vignette = 1.0 - (1.0 - gen1_vignette); // apply vignette
	}
	else if (tube_num == 2)
	{
		float gen2_vignette_1 = smoothstep(tube_radius,tube_radius-vignette_amount, distance(corrected_texturecoords,dual_tube_offset_1));
		float gen2_vignette_2 = smoothstep(tube_radius,tube_radius-vignette_amount, distance(corrected_texturecoords,dual_tube_offset_2));
		vignette = vignette_amount > 0 ? 1.0 - ((1.0 - gen2_vignette_1) * (1.0 - gen2_vignette_2)) : gen2_vignette_1 * gen2_vignette_2; // apply vignette
	}
	else if (tube_num == 4)
	{
		float gen3_vignette_1 = smoothstep(tube_radius,tube_radius-vignette_amount, distance(corrected_texturecoords,quad_tube_offset_1));
		float gen3_vignette_2 = smoothstep(tube_radius,tube_radius-vignette_amount, distance(corrected_texturecoords,quad_tube_offset_2));
		float gen3_vignette_3 = smoothstep(tube_radius,tube_radius-vignette_amount, distance(corrected_texturecoords,quad_tube_offset_3));
		float gen3_vignette_4 = smoothstep(tube_radius,tube_radius-vignette_amount, distance(corrected_texturecoords,quad_tube_offset_4));
		vignette = vignette_amount > 0 ? 1.0 - ((1.0 - gen3_vignette_1) * (1.0 - gen3_vignette_2) * (1.0 - gen3_vignette_3) * (1.0 - gen3_vignette_4))
		            : gen3_vignette_1 * gen3_vignette_2 * gen3_vignette_3 * gen3_vignette_4; // apply vignette
	}
	if (vignette_amount > 0)
	{
		vignette = pow(vignette,2);
	}
	return vignette;
}

float calc_work_area(float2 tc0, float work_area_radius, float tube_num)
{
	//return step(distance(aspect_ratio_correction(tc0), single_tube_centered), work_area_radius);
	if (tube_num == 1)
	{
		return step(distance(aspect_ratio_correction(tc0), single_tube_centered), work_area_radius);
	}
	if (tube_num == 2)
	{
		if (step(distance(aspect_ratio_correction(tc0), dual_tube_offset_1), work_area_radius) == 1 || 
			step(distance(aspect_ratio_correction(tc0), dual_tube_offset_2), work_area_radius) == 1)
			return 1.0f;
	}
	if (tube_num == 4)
	{
		if (step(distance(aspect_ratio_correction(tc0), quad_tube_offset_1), work_area_radius) == 1 || 
			step(distance(aspect_ratio_correction(tc0), quad_tube_offset_2), work_area_radius) == 1 ||
			step(distance(aspect_ratio_correction(tc0), quad_tube_offset_3), work_area_radius) == 1 ||
			step(distance(aspect_ratio_correction(tc0), quad_tube_offset_4), work_area_radius) == 1)
			return 1.0f;
	}	
	return 0.0f;
}

float4 calc_night_vision_effect(float2 tc0, float4 color)
{
    float tube_num = pnv_params_2.x;
	if (calc_work_area(tc0, pnv_params_2.y, tube_num) != 1)
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
	color *= calc_vignette(tc0, pnv_params.z, tube_num, pnv_params_2.y);
//////////////////////////////////////////////////////////////////////////////////////////
// screen flickering
    color += pnv_params.w * sin(timers.x * FLICKERING_FREQ);

    return color;
}
