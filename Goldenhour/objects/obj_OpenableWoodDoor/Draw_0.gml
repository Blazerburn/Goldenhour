/// @description Insert description here
// You can write your code in this editor
draw_self()

var _vol = global.sfxVolume * global.masterVolume

if choice_variable = "Open" {
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
	sprite_index = spr_WoodOpenedDoor
	global.animating = false;
	active = false;
	instance_destroy(collision)
}