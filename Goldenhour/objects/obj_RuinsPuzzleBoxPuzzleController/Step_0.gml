/// @description Insert description here
// You can write your code in this editor
var _vol = global.sfxVolume * global.masterVolume
//show_debug_message(global.pressurePlatesActive)
//show_debug_message(boxesNeeded)
if instance_exists(obj_Gate) {
	if (global.pressurePlatesActive >= boxesNeeded) {
		if obj_Gate.activation = 0 {
			if gateOpen = false {
				with(obj_Gate) {
					activation = 1;
					//instance_deactivate_object(self);
					instance_deactivate_object(gateCollision);
					show_debug_message("Gate Open")
				}
				gateOpen = true;
			}
		}
		else if obj_Gate.activation = 3 {
			startOpen = false;
		}
		/*if sound = 2 {
			audio_play_sound(sfx_puzzle, 5, false, _vol)
			sound = 1;
		}*/
	}
	else if (global.pressurePlatesActive <= boxesNeeded) and startOpen = false{
		//instance_activate_object(obj_Gate);
		if obj_Gate.activation = 3 {
			obj_Gate.activation = 4;
		}
		with(obj_Gate) {
		instance_activate_object(gateCollision);
		}
		gateOpen = false 
		//show_debug_message("Activating gate")
	}

	if sound = 0 {
		if !(global.pressurePlatesActive = boxesNeeded) {
			sound = 2;
			show_debug_message("Puzzle not finished")
		
		}
		else {
			sound = 1;
			show_debug_message("Puzzle finished")
		}
	}
	//show_debug_message(sound)
}
else if instance_exists(obj_CastleBoxGate) {
	if (global.pressurePlatesActive >= boxesNeeded) {
		if obj_CastleBoxGate.activation = 0 {
			if gateOpen = false {
				with(obj_CastleBoxGate) {
					activation = 1;
					//instance_deactivate_object(self);
					instance_deactivate_object(gateCollision);
					show_debug_message("Gate Open")
				}
				gateOpen = true;
			}
		}
		/*if sound = 2 {
			audio_play_sound(sfx_puzzle, 5, false, _vol)
			sound = 1;
		}*/
	}
	else if (global.pressurePlatesActive <= boxesNeeded) {
		//instance_activate_object(obj_Gate);
		if obj_CastleBoxGate.activation = 3 {
			obj_CastleBoxGate.activation = 4;
		}
		with(obj_CastleBoxGate) {
		instance_activate_object(gateCollision);
		}
		gateOpen = false 
		//show_debug_message("Activating gate")
	}

	if sound = 0 {
		if !(global.pressurePlatesActive = boxesNeeded) {
			sound = 2;
			show_debug_message("Puzzle not finished")
		
		}
		else {
			sound = 1;
			show_debug_message("Puzzle finished")
		}
	}
	//show_debug_message(sound)
}



if boxesActivated >= boxesNeeded {
	puzzleComplete = true;
}
else if boxesActivated < boxesNeeded {
	puzzleComplete = false;
}