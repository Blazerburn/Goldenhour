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

