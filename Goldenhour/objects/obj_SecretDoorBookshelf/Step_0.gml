event_inherited(); //so it will inherit from par_speaker

update_layer();

var _vol = global.sfxVolume * global.masterVolume

var _frame = image_index
show_debug_message(_frame)

if instance_exists(obj_FadeTransition) {
	if !obj_FadeTransition.alpha = 0 {
		image_index = 0
	}
}
else if round(_frame) = 9 or round(_frame) = 22 or round(_frame) = 34 {
	if playedSound = 0 {
		audio_play_sound(sfx_Bang, 5, false, _vol)
		playedSound = 1;
	}
}
else if round(_frame) = 42{
	if playedSound = 0 {
		audio_play_sound(sfx_HeavyCreaking, 5, false, _vol)
		playedSound = 1;
	}
}
else if round(_frame) = 46 {
	show_debug_message("Fallen")
	audio_play_sound(sfx_HeavyLanding, 5, false, _vol)
	global.libraryDoorOpen = 2;
	global.animating = 0;
	sprite_index = spr_FallenBookshelf
}

if round(_frame) = 15 or round(_frame) = 25 or round(_frame) = 35 {
	playedSound = 0
}
/*

Other code
codecodecode