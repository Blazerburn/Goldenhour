/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 60EEB5EA
/// @DnDArgument : "expr" "typing_sound_01_229863__1___1_"
/// @DnDArgument : "var" "roomSong"
roomSong = typing_sound_01_229863__1___1_;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69207A5D
/// @DnDArgument : "var" "global.currentSong"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "roomSong"
if(!(global.currentSong == roomSong)){	/// @DnDAction : YoYo Games.Audio.Pause_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 02C0BB54
	/// @DnDParent : 69207A5D
	/// @DnDArgument : "sound" "global.currentSong"
	audio_pause_sound(global.currentSong);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5E7A51C6
	/// @DnDParent : 69207A5D
	/// @DnDArgument : "soundid" "roomSong"
	audio_stop_sound(roomSong);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 67DD89E2
	/// @DnDParent : 69207A5D
	/// @DnDArgument : "soundid" "roomSong"
	/// @DnDArgument : "not" "1"
	var l67DD89E2_0 = roomSong;if (!audio_is_playing(l67DD89E2_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 59C44447
		/// @DnDParent : 67DD89E2
		/// @DnDArgument : "soundid" "roomSong"
		/// @DnDArgument : "loop" "1"
		audio_play_sound(roomSong, 0, 1, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 34A0DE74
		/// @DnDParent : 67DD89E2
		/// @DnDArgument : "value" "roomSong"
		/// @DnDArgument : "var" "currentSong"
		global.currentSong = roomSong;}}