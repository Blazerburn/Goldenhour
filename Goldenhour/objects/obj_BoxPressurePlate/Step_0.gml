/// @description Insert description here
// You can write your code in this editor

var _vol = global.sfxVolume * global.masterVolume
var _increase = increase
var _decrease = decrease

if (instance_exists(obj_PushableObject)) {
	var nearestBox = instance_nearest(x, y, obj_PushableObject);
	//show_debug_message(nearestBox)
	if rectangle_in_rectangle(nearestBox.x + 1, nearestBox.y + 10, nearestBox.x + 30, nearestBox.y + 27, 
	x - 2, y - 2, x + 2, y + 2) 
	or point_in_rectangle(TestPlayer.x, TestPlayer.y + 20, 
	x - 12, y - 12, x + 12, y + 12)
	{
		if (pressurePlateActive == 0) {
			pressurePlateActive += 1
			global.pressurePlatesActive += 1;
			if created = true {
			audio_play_sound(sfx_PressurePlateSound, 5, false, _vol)
			}
			show_debug_message("Pressure Plate Active")
			//show_debug_message(global.pressurePlatesActive)
		}
	}
	else {
		if (pressurePlateActive >= 1) {
			global.pressurePlatesActive -= 1;
			pressurePlateActive = 0;
			if created = true {
			audio_play_sound(sfx_PressurePlateSound, 5, false, _vol)
			}
			show_debug_message(pressurePlateActive)
			//show_debug_message(global.pressurePlatesActive)
		}
	}
	
	if (rectangle_in_rectangle(nearestBox.x + 1, nearestBox.y + 10, nearestBox.x + 30, nearestBox.y + 27, x - 2, y - 2, x + 2, y + 2)) {
	    activated = true;
	} else {
	    activated = false;
	}

	if (activated && !wasActivated) {
	    with (RuinsPuzzleBoxPuzzleController) {
	        boxesActivated++;
	        show_debug_message("Increased to: " + string(boxesActivated));
	    }
	    wasActivated = true;
	} 
	else if (!activated && wasActivated) {
	    with (RuinsPuzzleBoxPuzzleController) {
	        if (boxesActivated > 0) {
	            boxesActivated--;
	            show_debug_message("Decreased to: " + string(boxesActivated));
	        }
	    }
	    wasActivated = false;
	}
}
else {
	if point_in_rectangle(TestPlayer.x, TestPlayer.y + 20, 
	x - 12, y - 12, x + 12, y + 12)
	{
		if (pressurePlateActive == 0) {
			pressurePlateActive += 1
			global.pressurePlatesActive += 1;
			if created = true {
			audio_play_sound(sfx_PressurePlateSound, 5, false, _vol)
			}
			//show_debug_message("Pressure Plate Active")
			//show_debug_message(global.pressurePlatesActive)
		}
	}
	else if otherActivation = false {
		if (pressurePlateActive >= 1) {
			show_debug_message("Lowering active pressure plate count")
			global.pressurePlatesActive -= 1;
			pressurePlateActive = 0;
			if created = true {
			audio_play_sound(sfx_PressurePlateSound, 5, false, _vol)
			}
			//show_debug_message(pressurePlateActive)
		}
	}
}

//activated = false
created = true
increase = _increase
decrease = _decrease
