//show_debug_message(activation)
var _vol = global.sfxVolume * global.masterVolume

if colliding = 1 {
	if activation = 1 {
			show_debug_message("Activated")
			/*TestPlayer.visible = false;
			global.animating = 1;
			global.Immobilize = 1;
			layer_sequence_create("Assets_1", x+32, y+32, seq_DeepLibraryFalling)
			*/
			activation = 2;
			colliding = 2
		}
	if activation = 0 {
			show_debug_message("Activated")
			
	
			audio_play_sound(sfx_Cracking, 5, false, _vol)
			activation = 1;
			colliding = 2
		}
}