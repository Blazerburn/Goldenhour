if layer_exists(layer_get_id("FrontWall")){
	global.inside_lay_alpha = 0.25;
	var lay_id = layer_get_id("FrontWall");
	global.shader_alph = shader_get_uniform(sh_layerfade, "alpha");
	layer_script_begin(lay_id, layer_inside_set_alpha);
	layer_script_end(lay_id, layer_alpha_reset);
	}
	