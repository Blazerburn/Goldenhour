/// @description Insert description here
// You can write your code in this editor
var _vol = global.sfxVolume * global.masterVolume

if (global.pressurePlatesActive >= boxesNeeded) {
	gateOpen = true;
	with(obj_Gate) {
		
		instance_deactivate_object(self);
		instance_deactivate_object(gateCollision);
		show_debug_message("Gate Open")
	}
	/*if sound = 2 {
		audio_play_sound(sfx_puzzle, 5, false, _vol)
		sound = 1;
	}*/
}
else if (global.pressurePlatesActive <= boxesNeeded) {
	instance_activate_object(obj_Gate);
	with(obj_Gate) {
	instance_activate_object(gateCollision);
	}
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
show_debug_message(sound)