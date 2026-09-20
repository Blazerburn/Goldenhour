event_inherited(); //so it will inherit from par_speaker

update_layer();

var _frame = image_index
show_debug_message(_frame)

if instance_exists(obj_FadeTransition) {
	if !obj_FadeTransition.alpha = 0 {
		image_index = 0
	}
}
else if round(_frame) = 6 {
	show_debug_message("Fallen")
	global.libraryDoorOpen = 2;
	global.animating = 0;
	sprite_index = spr_FallenBookshelf
}

/*

Other code
codecodecode