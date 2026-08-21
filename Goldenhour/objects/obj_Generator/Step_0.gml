var _frame = image_index
show_debug_message(_frame)
if global.shiningCityPowered = 1 {
	if activated = 0 {
		sprite_index = spr_GeneratorPowering
		activated = 1;
		show_debug_message("Powering")
	}
	if activated = 1 {
		if _frame >= 24 {
			sprite_index = spr_GeneratorOn
			instance_create_layer(x, y, "Light", obj_GeneratorLightColor)
			activated = 2;
			show_debug_message("Powered on")
		}
	}
}