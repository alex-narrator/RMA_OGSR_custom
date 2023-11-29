//////////////////////////////////////////////////////////////////////////////////////////
// NV Shader by LVutner (basing on yaz NV)
// Last edit: 5:12 (22.05.19)
//////////////////////////////////////////////////////////////////////////////////////////

// defines
#define NV_BRIGHTNESS 5.0// pnv_color.w

// effects
#define NV_FLICKERING
#define NV_NOISE
#define NV_VIGNETTE
#define NV_SCANLINES

// effect settings
#define NOISE_INTENSITY 0.15// pnv_params.x
#define SCANLINES_INTENSITY 0.175// pnv_params.y
#define VIGNETTE_RADIUS 1.0// pnv_params.z
#define FLICKERING_INTENSITY 0.0035// pnv_params.w
#define FLICKERING_FREQ 60.0

uniform float4 pnv_color;
uniform float4 pnv_params;

float4 calc_night_vision_effect(float2 tc0, float4 color)
{
    float lum = dot(color.rgb, float3(0.3f, 0.38f, 0.22f) * pnv_color.w); // instead of float3 use LUMINANCE_floatTOR in stalker
    color.rgb = pnv_color.xyz * lum;

    // cheap noise function
    float noise = frac(sin(dot(tc0, float2(12.0, 78.0) + (timers.x * 1.17f))) * 43758.0);

//////////////////////////////////////////////////////////////////////////////////////////
// scanlines
#ifdef NV_SCANLINES
    color += pnv_params.y * sin(tc0.y * screen_res.y * 2.0);
#endif
//////////////////////////////////////////////////////////////////////////////////////////
// noise
#ifdef NV_NOISE
    color += noise * pnv_params.x;
#endif
//////////////////////////////////////////////////////////////////////////////////////////
// screen flickering
#ifdef NV_FLICKERING
    color += pnv_params.w * sin(timers.x * FLICKERING_FREQ);
#endif
//////////////////////////////////////////////////////////////////////////////////////////
// vignette
#ifdef NV_VIGNETTE
    color *= (1.f - pnv_params.z) - (distance(tc0.xy, float2(0.5f, 0.5f)));
    //color *= smoothstep(0.55f, 0.4f, distance(tc0.xy, float2(0.5f, 0.5f)));
#endif

    return color;
}
