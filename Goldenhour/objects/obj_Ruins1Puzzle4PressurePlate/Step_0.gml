event_inherited(); //so it will inherit from par_speaker

var _depth = BreakablePathWall.depth
depth = _depth - 1


if puzzleProgress = 1 {
			layer_sequence_create("Assets_1", x, y-8, seq_Puzzle4Rock)
			show_debug_message("Created sequence")
			
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
				                    _track.posx = TestPlayer.x-16;
									//_track.posy= TestPlayer.y-8;
				                }
				            }
				        }
					});
			puzzleProgress = 2;
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