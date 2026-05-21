/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_settingbox, 0, 0, 0, gui_width, gui_height)

draw_set_halign(fa_center);
draw_set_font(fnt_dialogue);

draw_sprite_stretched(spr_settingbox, buttonA, gui_width/2 - 162.5, gui_height/2 - 157.5, 325, 115)
draw_sprite_stretched(spr_settingbox, buttonB, gui_width/2 - 162.5, gui_height/2 - 12.5, 325, 115)
draw_sprite_stretched(spr_settingbox, buttonC, gui_width/2 - 162.5, gui_height/2 + 142.5, 325, 115)

draw_text_ext_transformed(gui_width/2, gui_height/2 - 150, "File 1", 4, 1000, 2, 2, 0)
draw_text_ext_transformed(gui_width/2, gui_height/2, "File 2", 4, 1000, 2, 2, 0)
draw_text_ext_transformed(gui_width/2, gui_height/2 + 150, "File 3", 4, 1000, 2, 2, 0)

if global.recentlyInteracted = 0 {
		if keyboard_check_pressed(global.upKey) {
			show_debug_message("up")
			//if saving = false {
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
			//}
		}
		
		else if keyboard_check_pressed(global.downKey) {
			show_debug_message("down")
			//if saving = false {
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
			//}
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
		if saving = false {
			if selected = 0 {
				show_debug_message("File 1")
				/*show_debug_message("Resume")
				with (TestPlayer) {
					instance_destroy(obj_SaveMenu)
					pauseMenu = "Closed"
					global.Immobilize = 0;
				}*/
				saving = true;
				buttonPressed = 0;
				selected = 0;
				fileSelected = 0;
			show_debug_message(saving)
			}
			if selected = 1 {
				show_debug_message("File 2")
				saving = true;
				buttonPressed = 0;
				selected = 0;
				fileSelected = 1;
			}
			if selected = 2 {
				show_debug_message("File 3")
				saving = true;
				buttonPressed = 0;
				selected = 0;
				fileSelected = 2;
			}
		}
		else if saving = true {
			if selected = 0 {
				show_debug_message("Save Game")
				/*show_debug_message("Resume")
				with (TestPlayer) {
					instance_destroy(obj_SaveMenu)
					pauseMenu = "Closed"
					global.Immobilize = 0;
				}*/
				save_game(fileSelected)
				buttonPressed = 0;
			
			}
			if selected = 1 {
				show_debug_message("Load Game")
				load_game(fileSelected)
				buttonPressed = 0;
			}
			if selected = 2 {
				show_debug_message("Exit")
				selected = fileSelected;
				fileSelected = 0;
				saving = false
				buttonPressed = 0;
				show_debug_message(saving)
			}
		}
		global.saveSelected = obj_SaveMenu.fileSelected
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
	if keyboard_check_pressed(global.pauseKey) {
		if saving = true {
			saving = false
			selected = fileSelected;
			fileSelected = 0;
			show_debug_message(saving)
		}
		else if saving = false {
			show_debug_message("Destroy")
			global.Immobilize = 0;
			global.menuOpen = false;
			instance_destroy()
		}
	}
}

if saving = true {
		
			/*if adjustingVolume = "True" {
				adjustingVolume = "False"
			}
			else if controlsOpen = "Closed" {
				settingsOpen = "Closed"
				selected = 1;
				adjustingVolume = "False"
				with TestPlayer {
						settingsMenu = "Closed";
					}
			}
			else if controlsOpen = "Open" {
				controlsOpen = "Closed"
				selected = 0;
			}*/


	/* All the text in the settings menu
	I know there's probably a nice easy way to do this but I don't know how :sob:
	Two sets of each so that if it's the one selected it changes to gold, could've done this 
	with a bunch of variables or an array maybe but I didn't care enough */
	
	draw_sprite_stretched(spr_settingbox, 0, gui_width/10, gui_height/4, 800, 600)
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_dialogue);
	
	
	
	draw_text_ext_transformed(gui_width/2, gui_height/2 - 250, "File " + string(fileSelected + 1), 4, 1000, 2, 2, 0)
	if fileSelected = 0 {
		draw_text_ext_transformed(gui_width/2, gui_height/2 + 250, string(global.statData.save_area1), 4, 1000, 1, 1, 0)
		draw_text_ext_transformed(gui_width/2, gui_height/2 + 290, string(global.statData.save_region1), 4, 1000, 1, 1, 0)
	}
	if fileSelected = 1 {
		draw_text_ext_transformed(gui_width/2, gui_height/2 + 250, string(global.statData.save_area2), 4, 1000, 1, 1, 0)
		draw_text_ext_transformed(gui_width/2, gui_height/2 + 290, string(global.statData.save_region2), 4, 1000, 1, 1, 0)
	}
	if fileSelected = 2 {
		draw_text_ext_transformed(gui_width/2, gui_height/2 + 250, string(global.statData.save_area3), 4, 1000, 1, 1, 0)
		draw_text_ext_transformed(gui_width/2, gui_height/2 + 290, string(global.statData.save_region3), 4, 1000, 1, 1, 0)
	}
	
	//draw_text_ext_transformed(gui_width/2, gui_height/2 + 250, string(global.room), 4, 1000, 1, 1, 0)
	//draw_text_ext_transformed(gui_width/2, gui_height/2 + 290, string(global.region), 4, 1000, 1, 1, 0)
	
	if selected = 0 {
		draw_text_ext_transformed_colour(gui_width/2, (gui_height/2) - 125, "Save", 4, 1000, 2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/2, (gui_height/2) - 125, "Save", 4, 1000, 2, 2, 0, c_white, c_white, c_white, c_white, 1)
		}
		if selected = 1 {
		draw_text_ext_transformed_colour(gui_width/2, (gui_height/2), "Load", 4, 1000, 2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/2, (gui_height/2), "Load", 4, 1000, 2, 2, 0, c_white, c_white, c_white, c_white, 1)
		}
		if selected = 2 {
		draw_text_ext_transformed_colour(gui_width/2, (gui_height/2) + 125, "Exit", 4, 1000, 2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/2, (gui_height/2) + 125, "Exit", 4, 1000, 2, 2, 0, c_white, c_white, c_white, c_white, 1)
		}
	

	/*draw_sprite_stretched(spr_settingbox, buttonA, gui_width/2 - 162.5, gui_height/2 - 157.5, 325, 115)
	draw_sprite_stretched(spr_settingbox, buttonB, gui_width/2 - 162.5, gui_height/2 - 12.5, 325, 115)
	draw_sprite_stretched(spr_settingbox, buttonC, gui_width/2 - 162.5, gui_height/2 + 142.5, 325, 115)

	draw_text_ext_transformed(gui_width/2, gui_height/2 - 150, "File 1", 4, 1000, 2, 2, 0)
	draw_text_ext_transformed(gui_width/2, gui_height/2, "File 2", 4, 1000, 2, 2, 0)
	draw_text_ext_transformed(gui_width/2, gui_height/2 + 150, "File 3", 4, 1000, 2, 2, 0)*/
	/*
	if controlsOpen = "Open" {
	
	// Control rebinding menu
		var _interactKey = global.interactKey;
		var _interactKey_text = "";

		switch(_interactKey) {
		    case vk_space:   _interactKey_text = "SPACE"; break;
			case vk_up:    _interactKey_text = "UP"; break;
			case vk_down:    _interactKey_text = "DOWN"; break;
		    case vk_left:    _interactKey_text = "LEFT"; break;
		    case vk_right:   _interactKey_text = "RIGHT"; break;
		    case vk_shift:   _interactKey_text = "SHIFT"; break;
		    case vk_control: _interactKey_text = "CTRL"; break;
			case vk_tab: _interactKey_text = "TAB"; break;
			case vk_alt: _interactKey_text = "ALT"; break;
			case vk_enter: _interactKey_text = "ENTER"; break;
			case vk_escape: _interactKey_text = "ESCAPE"; break;
		    default:         _interactKey_text = chr(_interactKey); break; // Works for A-Z, 0-9
		}
		var _inventoryKey = global.inventoryKey;
		var _inventoryKey_text = "";

		switch(_inventoryKey) {
		    case vk_space:   _inventoryKey_text = "SPACE"; break;
			case vk_up:    _inventoryKey_text = "UP"; break;
			case vk_down:    _inventoryKey_text = "DOWN"; break;
		    case vk_left:    _inventoryKey_text = "LEFT"; break;
		    case vk_right:   _inventoryKey_text = "RIGHT"; break;
		    case vk_shift:   _inventoryKey_text = "SHIFT"; break;
		    case vk_control: _inventoryKey_text = "CTRL"; break;
			case vk_tab: _inventoryKey_text = "TAB"; break;
			case vk_alt: _inventoryKey_text = "ALT"; break;
			case vk_enter: _inventoryKey_text = "ENTER"; break;
			case vk_escape: _inventoryKey_text = "ESCAPE"; break;
		    default:         _inventoryKey_text = chr(_inventoryKey); break; // Works for A-Z, 0-9
		}
		var _pauseKey = global.pauseKey;
		var _pauseKey_text = "";

		switch(_pauseKey) {
		    case vk_space:   _pauseKey_text = "SPACE"; break;
			case vk_up:    _pauseKey_text = "UP"; break;
			case vk_down:    _pauseKey_text = "DOWN"; break;
		    case vk_left:    _pauseKey_text = "LEFT"; break;
		    case vk_right:   _pauseKey_text = "RIGHT"; break;
		    case vk_shift:   _pauseKey_text = "SHIFT"; break;
		    case vk_control: _pauseKey_text = "CTRL"; break;
			case vk_tab: _pauseKey_text = "TAB"; break;
			case vk_alt: _pauseKey_text = "ALT"; break;
			case vk_enter: _pauseKey_text = "ENTER"; break;
			case vk_escape: _pauseKey_text = "ESCAPE"; break;
		    default:         _pauseKey_text = chr(_pauseKey); break; // Works for A-Z, 0-9
		}
		var _upKey = global.upKey;
		var _upKey_text = "";

		switch(_upKey) {
		    case vk_space:   _upKey_text = "SPACE"; break;
			case vk_up:    _upKey_text = "UP"; break;
			case vk_down:    _upKey_text = "DOWN"; break;
		    case vk_left:    _upKey_text = "LEFT"; break;
		    case vk_right:   _upKey_text = "RIGHT"; break;
		    case vk_shift:   _upKey_text = "SHIFT"; break;
		    case vk_control: _upKey_text = "CTRL"; break;
			case vk_tab: _upKey_text = "TAB"; break;
			case vk_alt: _upKey_text = "ALT"; break;
			case vk_enter: _upKey_text = "ENTER"; break;
			case vk_escape: _upKey_text = "ESCAPE"; break;
		    default:         _upKey_text = chr(_upKey); break; // Works for A-Z, 0-9
		}
		var _rightKey = global.rightKey;
		var _rightKey_text = "";

		switch(_rightKey) {
		    case vk_space:   _rightKey_text = "SPACE"; break;
			case vk_up:    _rightKey_text = "UP"; break;
			case vk_down:    _rightKey_text = "DOWN"; break;
		    case vk_left:    _rightKey_text = "LEFT"; break;
		    case vk_right:   _rightKey_text = "RIGHT"; break;
		    case vk_shift:   _rightKey_text = "SHIFT"; break;
		    case vk_control: _rightKey_text = "CTRL"; break;
			case vk_tab: _rightKey_text = "TAB"; break;
			case vk_alt: _rightKey_text = "ALT"; break;
			case vk_enter: _rightKey_text = "ENTER"; break;
			case vk_escape: _rightKey_text = "ESCAPE"; break;
		    default:         _rightKey_text = chr(_rightKey); break; // Works for A-Z, 0-9
		}
		var _downKey = global.downKey;
		var _downKey_text = "";

		switch(_downKey) {
		    case vk_space:   _downKey_text = "SPACE"; break;
			case vk_up:    _downKey_text = "UP"; break;
			case vk_down:    _downKey_text = "DOWN"; break;
		    case vk_left:    _downKey_text = "LEFT"; break;
		    case vk_right:   _downKey_text = "RIGHT"; break;
		    case vk_shift:   _downKey_text = "SHIFT"; break;
		    case vk_control: _downKey_text = "CTRL"; break;
			case vk_tab: _downKey_text = "TAB"; break;
			case vk_alt: _downKey_text = "ALT"; break;
			case vk_enter: _downKey_text = "ENTER"; break;
			case vk_escape: _downKey_text = "ESCAPE"; break;
		    default:         _downKey_text = chr(_downKey); break; // Works for A-Z, 0-9
		}
		var _leftKey = global.leftKey;
		var _leftKey_text = "";

		switch(_leftKey) {
		    case vk_space:   _leftKey_text = "SPACE"; break;
			case vk_up:    _leftKey_text = "UP"; break;
			case vk_down:    _leftKey_text = "DOWN"; break;
		    case vk_left:    _leftKey_text = "LEFT"; break;
		    case vk_right:   _leftKey_text = "RIGHT"; break;
		    case vk_shift:   _leftKey_text = "SHIFT"; break;
		    case vk_control: _leftKey_text = "CTRL"; break;
			case vk_tab: _leftKey_text = "TAB"; break;
			case vk_alt: _leftKey_text = "ALT"; break;
			case vk_enter: _leftKey_text = "ENTER"; break;
			case vk_escape: _leftKey_text = "ESCAPE"; break;
		    default:         _leftKey_text = chr(_leftKey); break; // Works for A-Z, 0-9
		}
		
		draw_sprite_stretched(spr_settingbox, 0, gui_width/5, 0, 600, gui_height)
	
		draw_set_halign(fa_center);
		draw_set_font(fnt_dialogue);

		draw_text_ext_transformed(gui_width/2, 0, "Controls", 4, 1000, 2, 2, 0)
		
		if rebindingKey = true {
			draw_text_ext_transformed(gui_width/2, 900, "Press the new key to rebind", 40, 500, 1, 1, 0)
		}
	
		draw_set_halign(fa_left);
		if selected = 0 {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 2, "Interact: " + _interactKey_text, 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 2, "Interact: " + _interactKey_text, 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		if selected = 1 {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 3, "Inventory: " + _inventoryKey_text, 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 3, "Inventory: " + _inventoryKey_text, 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		if selected = 2 {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 4, "Pause: " + _pauseKey_text, 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 4, "Pause: " + _pauseKey_text, 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		if selected = 3 {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 5, "Move Up: " + _upKey_text, 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 5, "Move Up: " + _upKey_text, 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		if selected = 4 {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 6, "Move Right: " + _rightKey_text, 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 6, "Move Right: " + _rightKey_text, 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		if selected = 5 {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 7, "Move Down: " + _downKey_text, 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 7, "Move Down: " + _downKey_text, 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		if selected = 6 {
		draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 8, "Move Left: " + _leftKey_text, 4, 1000, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
		else {
			draw_text_ext_transformed_colour(gui_width/5 + 25, (gui_height/12) * 8, "Move Left: " + _leftKey_text, 4, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		
	}
	*/
}

