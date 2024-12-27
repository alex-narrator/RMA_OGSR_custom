#define MARK_ADJUST 1

uniform float4 markswitch_params;
uniform float4 markswitch_color;

int mark_sides()
{
	int sides = 1;
	while (sides * sides < int(markswitch_params.y))
	{
		sides += 1;
	}
	
	return sides;
}

float2 mark_adjust(float2 pos)
{
	int sides = mark_sides();
	
	float d_x = int(markswitch_params.x) % sides;
	float d_y = int(markswitch_params.x) / sides;
	
	float p_x = clamp(d_x + pos.x, d_x, d_x + 1) / sides;
	float p_y = clamp(d_y + pos.y, d_y, d_y + 1) / sides;
	
	return float2(p_x, p_y);
}
