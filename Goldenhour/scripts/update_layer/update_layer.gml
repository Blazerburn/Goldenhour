// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_layer(){
	if layer != noone {
		show_debug_message(layer)
		layer = global.layerGrid[# 0, y div global.CELL];
	}
}