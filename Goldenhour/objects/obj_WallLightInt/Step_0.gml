event_inherited(); //so it will inherit from par_speaker

if global.shiningCityPowered = 0 {
	show_debug_message("Lights off")
	if puzzleProgress = 1 {
		if global.castleLight = 0 {
			show_debug_message("Disabled lights")
			global.castleLight = 1
		}
		instance_deactivate_object(self)
	}
}
else if global.shiningCityPowered = 1 {
	show_debug_message("Lights On")
	if puzzleProgress = 1 {
		active = true;
		instance_activate_object(self)
		show_debug_message("Turned lights on again")
		global.castleLight = 2
	}
	else if puzzleProgress = 2 {
		if global.castleLight = 2 {
			show_debug_message("Disabled lights again")
			global.castleLight = 3
		}
		instance_deactivate_object(self)
	}
}

if global.castleLight = 1 or global.castleLight = 3 {
	show_debug_message("False")
	active = false;
}
else {
	show_debug_message("True")
	active = true;
}

/*

Other code
codecodecode