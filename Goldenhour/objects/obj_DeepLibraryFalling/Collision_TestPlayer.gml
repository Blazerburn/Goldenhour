//show_debug_message(activation)
var _vol = global.sfxVolume * global.masterVolume

if colliding = 1 {
	if activation = 1 {
			show_debug_message("Activated")
			TestPlayer.visible = false;
			global.animating = 1;
			global.Immobilize = 1;
			layer_sequence_create("Assets_1", x+32, y+32, seq_DeepLibraryFalling)
			
			var _seq = sequence_get(seq_DeepLibraryFalling); 
			
			/*if TestPlayer.playerDirection = 0 {
				if (array_length(activeTracks) > 0) {
		            for (var i = 0; i < array_length(activeTracks); i++) {
		                var _track = activeTracks[i];
		                if (_track.track.name == "Code2") {
		                    _track.enabled = false;
		                    break;
		                }
		            }
		        }
			}
			else if TestPlayer.playerDirection = 2 {
				if (array_length(activeTracks) > 0) {
		            for (var i = 0; i < array_length(activeTracks); i++) {
		                var _track = activeTracks[i];
		                if (_track.track.name == "Code") {
		                    _track.enabled = false;
		                    break;
		                }
		            }
		        }
			}*/
			
			_seq.event_step = method(_seq, function() {
		        if (array_length(activeTracks) > 0) {
		            for (var i = 0; i < array_length(activeTracks); i++) {
		                var _track = activeTracks[i];
						if TestPlayer.playerDirection = 2 {
							show_debug_message(_track.track.name)
							if (_track.track.name == "Code") {
			                    _track.track.enabled = false;
								show_debug_message("Hid Code")
			                }
						}
						else if TestPlayer.playerDirection = 0 {
							if (_track.track.name == "Code2") {
			                    _track.track.enabled = false;
								show_debug_message("Hid Code2")
			                }
						}
		                if (_track.track.name == "Code" or _track.track.name == "Code2") {
		                    _track.posx = TestPlayer.x-128;
		                }
		            }
		        }
			});

			
			
			
			
			
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