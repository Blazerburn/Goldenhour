if sprite_index = spr_RoomDoorOpening {
	var _vol = global.sfxVolume * global.masterVolume
	global.Immobilize = 1;
	if sound = false {
		audio_play_sound(sfx_DoorOpening, 5, false, _vol)
		sound = true;
	}
}