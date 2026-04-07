// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function layer_inside_set_alpha(){
	shader_set(sh_layerfade);
	shader_set_uniform_f(global.shader_alph, global.inside_lay_alpha)
}