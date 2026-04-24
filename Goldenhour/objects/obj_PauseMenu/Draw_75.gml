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
	if adjustingVolume = "False" {
		if keyboard_check_pressed(global.upKey) {
			show_debug_message("up")
			if settingsOpen = "Closed" {
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
			else {
			
					if selected > 0 {
						selected -= 1;
					}
					else if selected == 0{
						selected = 5;
					}
					show_debug_message(selected)
				}
			}
		
		else if keyboard_check_pressed(global.downKey) {
			show_debug_message("down")
			if settingsOpen = "Closed" {
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
			else {
				// Settings Open
					if selected < 5 {
						selected += 1;
					}
					else if selected == 5 {
						selected = 0;
					}
					show_debug_message(selected)
			}
		}
	}
}

if adjustingVolume = "True" {
				if keyboard_check(global.upKey) {
					if selected = 0 {
						global.masterVolume += .01
						show_debug_message(global.masterVolume)
						global.masterVolume = clamp(global.masterVolume, 0, 2);
					}
					if selected = 1 {
						global.musicVolume += .01
						show_debug_message(global.musicVolume)
						global.musicVolume = clamp(global.musicVolume, 0, 2);
					}
					if selected = 2 {
						global.sfxVolume += .01
						show_debug_message(global.sfxVolume)
						global.sfxVolume = clamp(global.sfxVolume, 0, 2);
					}
				}
			}
if adjustingVolume = "True" {
	if keyboard_check(global.downKey) {
				if selected = 0 {
					global.masterVolume -= .01
					show_debug_message(global.masterVolume)
					global.masterVolume = clamp(global.masterVolume, 0, 2);
				}
				if selected = 1 {
					global.musicVolume -= .01
					show_debug_message(global.musicVolume)
					global.musicVolume = clamp(global.musicVolume, 0, 2);
				}
				if selected = 2 {
					global.sfxVolume -= .01
					show_debug_message(global.sfxVolume)
					global.sfxVolume = clamp(global.sfxVolume, 0, 2);
				}
			}
		}

if keyboard_check_pressed(global.interactKey) {
	if global.recentlyInteracted = 0 {
		if settingsOpen = "Closed" {
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
		else if settingsOpen = "Open" {
			if selected = 0 {
				if adjustingVolume = "False" {
					adjustingVolume = "True"
				}
				else if adjustingVolume = "True" {
					adjustingVolume = "False"
				}
			}
			if selected = 1 {
				if adjustingVolume = "False" {
					adjustingVolume = "True"
				}
				else if adjustingVolume = "True" {
					adjustingVolume = "False"
				}
			}
			if selected = 2 {
				if adjustingVolume = "False" {
					adjustingVolume = "True"
				}
				else if adjustingVolume = "True" {
					adjustingVolume = "False"
				}
			}
			if selected = 3 {
				if global.borderlessWindow = "False" {
					global.borderlessWindow = "True"
					window_enable_borderless_fullscreen(true)
					window_set_fullscreen(true)
					
				}
				else if global.borderlessWindow = "True" {
					global.borderlessWindow = "False"
					window_enable_borderless_fullscreen(false)
					window_set_fullscreen(false)
				}
			}
			if selected = 4 {
				if global.fullscreen = "False" {
					global.fullscreen = "True"
					window_set_fullscreen(true)
				}
				else if global.fullscreen = "True" {
					global.fullscreen = "False"
					window_set_fullscreen(false)
				}
			}
			if selected = 5 {
				if controlsOpen = "Closed" {
					controlsOpen = "Open"
				}
				else if controlsOpen = "Open" {
					controlsOpen = "Closed"
				}
			}
		}
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
			selected = 0;
			with TestPlayer {
				settingsMenu = "Open";
			}
			settingsOpen = "Open";
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

if settingsOpen = "Open" {
	
	if keyboard_check_pressed(global.pauseKey) {
		if adjustingVolume = "True" {
			adjustingVolume = "False"
		}
		else {
		settingsOpen = "Closed"
		selected = 1;
		adjustingVolume = "False"
		with TestPlayer {
				settingsMenu = "Closed";
			}
		}
	}

	/* All the text in the settings menu
	I know there's probably a nice easy way to do this but I don't know how :sob:
	Two sets of each so that if it's the one selected it changes to gold, could've done this 
	with a bunch of variables or an array maybe but I didn't care enough */
	
	draw_sprite_stretched(spr_settingbox, 0, gui_width/5, 0, 600, gui_height)
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_dialogue);

	draw_text_ext_transformed(gui_width/2, 0, "Settings", 4, 1000, 2, 2, 0)
	
	draw_set_halign(fa_left);
	if selected = 0 {
	draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 2, "Master Volume:" + string(floor(global.masterVolume * 100)) + "%", 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
	}
	else {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 2, "Master Volume:" + string(floor(global.masterVolume * 100)) + "%", 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	}
	if selected = 1 {
	draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 3, "Music Volume:" + string(floor(global.musicVolume * 100)) + "%", 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
	}
	else {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 3, "Music Volume:" + string(floor(global.musicVolume * 100)) + "%", 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	}
	if selected = 2 {
	draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 4, "SFX Volume:" + string(floor(global.sfxVolume * 100)) + "%", 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
	}
	else {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 4, "SFX Volume:" + string(floor(global.sfxVolume * 100)) + "%", 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	}
	if selected = 3 {
	draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 5, "Borderless Window", 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
	}
	else {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 5, "Borderless Window", 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	}
	if selected = 4 {
	draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 6, "Fullscreen", 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
	}
	else {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 6, "Fullscreen", 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	}
	if selected = 5 {
	draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 7, "Controls", 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
	}
	else {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 7, "Controls", 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	}
}

/*
draw_sprite_stretched(spr_settingbox, 0, gui_width/5, 0, 600, gui_height)
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_dialogue);

	draw_text_ext_transformed(gui_width/2, 0, "Settings", 4, 1000, 2, 2, 0)
	
	draw_set_halign(fa_left);