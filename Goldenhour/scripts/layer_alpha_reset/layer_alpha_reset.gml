// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function layer_alpha_reset(){
	if (shader_current() != -1) shader_reset();
}