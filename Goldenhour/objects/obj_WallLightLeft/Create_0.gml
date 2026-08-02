/// @description Insert description here
// You can write your code in this editor
update_layer()

if global.shiningCityPowered = 1 {
	sprite_index = spr_WallSideLightOn
image_index = 1;
instance_create_layer(x, y, "Light", obj_WallLightLeftColor)
}



