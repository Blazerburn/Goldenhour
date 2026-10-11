if collision_rectangle(x, y, x + 64, y + 64, TestPlayer, false, false) {
	if colliding != 2 {
		colliding = 1;
		show_debug_message("Colliding")
	}
	
}

else  {
	colliding = 0;
	show_debug_message("No Longer Colliding")
}

if activation = 2 {
	instance_activate_object(obj_Ruins1DeepLibraryHole)
	instance_activate_object(collision)
}