/// @description Insert description here
// You can write your code in this editor
draw_self()

var _vol = global.sfxVolume * global.masterVolume

if choice_variable = "Open" {
	active = false;
	sprite_index = spr_WoodOpeningDoor
	if image_index = 4 {
		choice_variable = "Opened";
	}
	if image_index = 1 {
		audio_play_sound(sfx_DoorOpening, 5, false, _vol)
		global.animating = true;
	}
}

if choice_variable = "Opened" {
	if interaction = false {
		sprite_index = spr_WoodOpenedDoor
		global.Immobilize = 0;
		global.animating = false;
		active = false;
		//choice_variable = "Opened2"
		instance_destroy(collision)
		interaction = true;
	}
}