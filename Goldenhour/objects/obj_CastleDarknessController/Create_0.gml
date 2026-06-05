/// @description Insert description here
// You can write your code in this editor
if global.shiningCityPowered = 1 {
	if layer_exists("Darkness") {
		layer_destroy("Darkness")
	}
	if layer_exists("DarknessAbove") {
		layer_destroy("DarknessAbove")
	}
	/*if layer_exists("Transition") {
		layer_destroy("Transition")
	}*/
}