if activated = 0 {
	if global.shiningCityPowered = 1 {
		sprite_index = spr_GeneratorOn
		instance_create_layer(x, y, "Light", obj_GeneratorLightColor)
		activated = 1;
	}
}