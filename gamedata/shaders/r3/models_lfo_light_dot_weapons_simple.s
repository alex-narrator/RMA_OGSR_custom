function normal   (shader, t_base, t_second, t_detail)
	shader:begin  ("model_def_lplanes","models_lfo_light_dot_weapons_simple")
      : fog       	(true)
      : zb        	(true,false)
      : blend     	(true,blend.srcalpha,blend.invsrcalpha)
      : aref      	(true,0)
      : sorting	  	(2,true)
      : distort   	(true)
	shader:dx10texture	("s_base",	t_base)
end
