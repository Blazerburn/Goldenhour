/// @description Insert description here
// You can write your code in this editor
if colliding = 0 {
	layer_depth(layerID, oldDepth)
	if layer_exists("PerspectiveBuilding2") {
		layer_depth(layerIDB, oldDepthB)
	}
	//layer_depth(shadowID, shadowDepth)
	//layer_depth(shadowBelowID, shadowBelowDepth)
	//show_debug_message("Not Colliding")
}

if colliding = 1 {
	if layer_exists("Light") {
		layer_depth(layerID, lightDepth+1)
		if layer_exists("PerspectiveBuilding2") {
			layer_depth(layerIDB, lightDepth+1)
		}
		//show_debug_message(lightDepth)
		show_debug_message("Colliding")
	}
	else {
		layer_depth(layerID, newDepth)
		if layer_exists("PerspectiveBuilding2") {
			layer_depth(layerIDB, newDepth)
		}
		show_debug_message("Colliding")
	}
	//layer_depth(shadowID, -1)
	//layer_depth(shadowBelowID, -1)
}