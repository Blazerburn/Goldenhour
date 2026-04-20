/// @description Insert description here
// You can write your code in this editor
if colliding = 0 {
	instance_activate_layer(beginLayerID)
	instance_deactivate_layer(collideLayerID)
}

if colliding = 1 {
	instance_deactivate_layer(beginLayerID)
	instance_activate_layer(collideLayerID)
}