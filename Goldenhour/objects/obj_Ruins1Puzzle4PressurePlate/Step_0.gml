event_inherited(); //so it will inherit from par_speaker

var _depth = BreakablePathWall.depth
depth = _depth - 1


if puzzleProgress = 1 {
	
	
	global.animating = 1;
	global.Immobilize = 1;
	
			sequence = layer_sequence_create("Assets_1", x, y-24, seq_Puzzle4Rock)
			show_debug_message("Created sequence")
			//TestPlayer.visible = false;
					var _seq = sequence_get(seq_Puzzle4Rock); 
						
					_seq.event_step = method(_seq, function() {
				        if (array_length(activeTracks) > 0) {
							//show_debug_message(array_length(activeTracks))
				            for (var i = 0; i < array_length(activeTracks); i++) {
				                var _track = activeTracks[i];
								if TestPlayer.playerDirection = 0 {
									//show_debug_message(_track.track.name)
									if (_track.track.name == "Left" or _track.track.name == "Right" or _track.track.name == "Down") {
					                    _track.track.enabled = false;
										//show_debug_message("Hid Non-ups")
					                }
								}
								else if TestPlayer.playerDirection = 1 {
									if (_track.track.name == "Left" or _track.track.name == "Up" or _track.track.name == "Down") {
					                    _track.track.enabled = false;
										//show_debug_message("Hid Non-Right")
					                }
								}
								else if TestPlayer.playerDirection = 2 {
									if (_track.track.name == "Left" or _track.track.name == "Up" or _track.track.name == "Right") {
					                    _track.track.enabled = false;
										show_debug_message("Hid Non-Down")
					                }
								}
								else if TestPlayer.playerDirection = 3 {
									if (_track.track.name == "Down" or _track.track.name == "Up" or _track.track.name == "Right") {
					                    _track.track.enabled = false;
										//show_debug_message("Hid Non-Left")
					                }
								}
				                if (_track.track.name == "Up" or _track.track.name == "Right" or _track.track.name == "Down" or _track.track.name == "Left") {
									show_debug_message(TestPlayer.x)
									show_debug_message(_track.posx)
									show_debug_message(TestPlayer.y)
									show_debug_message(_track.posy)
				                    _track.posx = TestPlayer.x-304;
									_track.posy= TestPlayer.y-408;
				                }
				            }
				        }
					});
			puzzleProgress = 2;
}
else if puzzleProgress = 2 {
	
	//var _seq = sequence_get(seq_Puzzle4Rock); 
	if layer_sequence_is_finished(sequence) {
		show_debug_message("Sequence finished")
		
		
		if TestPlayer.playerDirection = 0 {
			TestPlayer.y += 24
		}
		else if TestPlayer.playerDirection = 1 {
			TestPlayer.x -= 24
		}
		else if TestPlayer.playerDirection = 2 {
			TestPlayer.y -= 24
		}
		else if TestPlayer.playerDirection = 3 {
			TestPlayer.x += 24
		}
		TestPlayer.visible = true;
		layer_sequence_destroy(sequence)
		global.animating = 0;
		global.Immobilize = 0;
	}
}

/*if(createWall = 0) {
var pathPushableWall = create_instance_layer(x, y, "Collisions", PushableWall);
createWall = 1;

show_debug_message(string("Push Wall:"));
show_debug_message(string(pathPushableWall));	
}
/*

Other code
codecodecode