if layer_exists(layer_get_id("OutsideBuilding")){
	global.inside_lay_alpha = 1;
	var lay_id = layer_get_id("OutsideBuilding");
	global.shader_alph = shader_get_uniform(sh_layerfade, "alpha");
	layer_script_begin(lay_id, layer_inside_set_alpha);
	layer_script_end(lay_id, layer_alpha_reset);
	}
	
	
if layer_exists(layer_get_id("InsideBuilding")){
	global.outside_lay_alpha = 0;
	var lay_id = layer_get_id("InsideBuilding");
	global.shader_alph = shader_get_uniform(sh_layerfade, "alpha");
	layer_script_begin(lay_id, layer_outside_set_alpha);
	layer_script_end(lay_id, layer_alpha_reset);
	}