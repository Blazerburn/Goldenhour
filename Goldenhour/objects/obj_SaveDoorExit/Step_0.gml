if sprite_index = spr_SaveDoorExiting {
	var _vol = global.sfxVolume * global.masterVolume
	if sound = false {
		audio_play_sound(sfx_DoorOpening, 5, false, _vol)
		sound = true;
	}
}