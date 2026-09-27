// Auto-generated stubs for each available event.

function seq_DeepLibraryFalling_Moment()
{
	goto_room(rm_DeepLibrary1, 1, 2)
	global.Immobilize = 0;
	global.animating = 0
}



function seq_DeepLibraryFalling_Moment_2()
{
	var _vol = global.sfxVolume * global.masterVolume
	
	audio_play_sound(sfx_Cracking, 5, false, _vol)
}



function seq_DeepLibraryFalling_Moment_3()
{
	var _vol = global.sfxVolume * global.masterVolume
	
	audio_play_sound(sfx_FloorBreaking, 5, false, _vol)
}