/// @description Insert description here
// You can write your code in this editor
if colliding = 0 {
	layer_depth(layerID, oldDepth)
	//layer_depth(shadowID, shadowDepth)
	//layer_depth(shadowBelowID, shadowBelowDepth)
}

if colliding = 1 {
	if layer_exists("Light") {
		layer_depth(layerID, lightDepth)
		show_debug_message(lightDepth)
	}
	else {
		layer_depth(layerID, newDepth)
	}
	//layer_depth(shadowID, -1)
	//layer_depth(shadowBelowID, -1)
}