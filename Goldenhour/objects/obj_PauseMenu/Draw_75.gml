/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_settingbox, 0, 0, 0, gui_width, gui_height)

draw_set_halign(fa_center);
draw_set_font(fnt_dialogue);

draw_sprite_stretched(spr_settingbox, buttonA, gui_width/2 - 162.5, gui_height/2 - 157.5, 325, 115)
draw_sprite_stretched(spr_settingbox, buttonB, gui_width/2 - 200, gui_height/2 - 12.5, 400, 125)
draw_sprite_stretched(spr_settingbox, buttonC, gui_width/2 - 125, gui_height/2 + 142.5, 250, 115)

draw_text_ext_transformed(gui_width/2, gui_height/2 - 150, "Resume", 4, 1000, 2, 2, 0)
draw_text_ext_transformed(gui_width/2, gui_height/2, "Settings", 4, 1000, 2, 2, 0)
draw_text_ext_transformed(gui_width/2, gui_height/2 + 150, "Quit", 4, 1000, 2, 2, 0)

if global.recentlyInteracted = 0 {
	if keyboard_check_pressed(global.upKey) {
		show_debug_message("up")
	
		if selected > 0 {
			selected -= 1;
		}
		else if selected == 0{
			selected = 2;
		}
		show_debug_message(selected)
		if selected = 0 {
			buttonA = 1;
			buttonB = 0;
			buttonC = 0;
		}
		if selected = 1 {
			buttonA = 0;
			buttonB = 1;
			buttonC = 0;
		}
		if selected = 2 {
			buttonA = 0;
			buttonB = 0;
			buttonC = 1;
		}
	}
	else if keyboard_check_pressed(global.downKey) {
		show_debug_message("down")
		if selected < 2 {
			selected += 1;
		}
		else if selected == 2 {
			selected = 0;
		}
		show_debug_message(selected)
		if selected = 0 {
			buttonA = 1;
			buttonB = 0;
			buttonC = 0;
		}
		if selected = 1 {
			buttonA = 0;
			buttonB = 1;
			buttonC = 0;
		}
		if selected = 2 {
			buttonA = 0;
			buttonB = 0;
			buttonC = 1;
		}
	}
}


if keyboard_check_pressed(global.interactKey) {
	if global.recentlyInteracted = 0 {
		if selected = 0 {
			buttonA = 2;
			buttonB = 0;
			buttonC = 0;
		}
		if selected = 1 {
			buttonA = 0;
			buttonB = 2;
			buttonC = 0;
		}
		if selected = 2 {
			buttonA = 0;
			buttonB = 0;
			buttonC = 2;
		}
		global.recentlyInteracted = 10;
		buttonPressed = 1;
	}
}

if global.recentlyInteracted = 0 {
	
	if buttonPressed = 1 {
		if selected = 0 {
			show_debug_message("Resume")
			with (TestPlayer) {
				instance_destroy(obj_PauseMenu)
				pauseMenu = "Closed"
				global.Immobilize = 0;
			}
			buttonPressed = 0;
			
		}
		if selected = 1 {
			show_debug_message("Settings")
			buttonPressed = 0;
		}
		if selected = 2 {
			show_debug_message("Quit")
			buttonPressed = 0;
			game_end()
		}
	}
	
	if selected = 0 {
		buttonA = 1;
		buttonB = 0;
		buttonC = 0;
	}
	if selected = 1 {
		buttonA = 0;
		buttonB = 1;
		buttonC = 0;
	}
	if selected = 2 {
		buttonA = 0;
		buttonB = 0;
		buttonC = 1;
	}
}