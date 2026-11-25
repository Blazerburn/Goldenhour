
if activation = 1 {
	sprite_index = anim_GateOpening
	activation = 2;
}
else if activation = 2 {
	var _vol = global.sfxVolume * global.masterVolume

	var _frame = image_index
	show_debug_message(_frame)

	if round(_frame) = 5 {
		
		activation = 3
	}
}
else if activation = 3 {
	if opened = 0 {
		instance_create_layer(x, y, "Instances", obj_GateOpen)
		sprite_index = spr_GateOpen
		instance_deactivate_object(int)
		instance_deactivate_object(gateCollision);
		opened = 1;
	}
}
else if activation = 4 {
	instance_destroy(obj_GateOpen)
	
	sprite_index = anim_GateClosing
	image_index = 0
	show_debug_message("Closing")
	activation = 5 
}
else if activation = 5 {
	var _vol = global.sfxVolume * global.masterVolume

	var _frame = image_index
	show_debug_message(_frame)
	
	if round(_frame) = 5 {
		activation = 6
	}
}
else if activation = 6 {
	show_debug_message("Closed Gate")
	instance_activate_object(int)
	sprite_index = spr_GateClosed
	activation = 0
	opened = 0
}

