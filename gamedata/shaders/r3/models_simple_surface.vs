#include "common.h"
#include "skin.h"

struct vf
{
    float2 tc0 : TEXCOORD0; // base
    float4 c0 : COLOR0; // color
    float4 hpos : SV_Position;
};

vf _main(v_model v)
{
    vf o;

    // Трансформація координат та TAA
    o.hpos = mul(m_WVP, v.P); 
    o.hpos.xy = get_taa_jitter(o.hpos);

    // Копіювання текстурних координат
    o.tc0 = v.tc.xy; 

    // Комбінуємо навколишнє світло (ambient) та дифузне світло
    // Примітка: L_ambient та L_sun_color — стандартні назви констант світла в common.h
    float3 lighting = L_ambient.xyz + L_sun_color.xyz;

    // Записуємо фінальний колір світла у вершину (альфа-канал залишаємо 1.0)
    o.c0 = float4(lighting, 1.0);

    return o;
}

/////////////////////////////////////////////////////////////////////////
#ifdef SKIN_NONE
vf main(v_model v) { return _main(v); }
#endif

#ifdef SKIN_0
vf main(v_model_skinned_0 v) { return _main(skinning_0(v)); }
#endif

#ifdef SKIN_1
vf main(v_model_skinned_1 v) { return _main(skinning_1(v)); }
#endif

#ifdef SKIN_2
vf main(v_model_skinned_2 v) { return _main(skinning_2(v)); }
#endif

#ifdef SKIN_3
vf main(v_model_skinned_3 v) { return _main(skinning_3(v)); }
#endif

#ifdef SKIN_4
vf main(v_model_skinned_4 v) { return _main(skinning_4(v)); }
#endif