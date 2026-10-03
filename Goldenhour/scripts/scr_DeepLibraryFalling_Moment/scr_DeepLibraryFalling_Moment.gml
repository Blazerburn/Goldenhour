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



function seq_DeepLibraryFalling_Moment_1()
{
	var _inst = layer_sequence_get_instance(seq_DeepLibraryFalling)
	show_debug_message("Moved X")
	for (var i = 0; i < array_length(_inst.activeTracks); i++) {
		var _track = _inst.activeTracks[i];
		if _track.track.name == "Code" {
			_track.track.tracks = [];
			break;
		}
	}
	for (var i = 0; i < array_length(_inst.activeTracks); i++) {
		var _track = _inst.activeTracks[i];
		if _track.track.name == "Code" {
			_track.posx = TestPlayer.x/100;
			show_debug_message(_track.posx)
			break;
		}
	}
}



function seq_DeepLibraryFalling_Moment_4()
{

}