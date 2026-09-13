/// @description Insert description here
// You can write your code in this editor
colliding = 0;
layerID = layer_get_id("PerspectiveBuilding")
//shadowID = layer_get_id("Shadows")
//shadowBelowID = layer_get_id("ShadowsBelow")
oldDepth = layer_get_depth(layerID)
if layer_exists("PerspectiveBuilding2") {
	layerIDB = layer_get_id("PerspectiveBuilding2")
	oldDepthB = layer_get_depth(layerIDB)
}
newDepth = 0
//shadowDepth = layer_get_depth(shadowID)
//shadowBelowDepth = layer_get_depth(shadowBelowID)
if layer_exists("Light") {
	lightID = layer_get_id("Light")
	lightDepth = layer_get_depth(lightID) + 1
}