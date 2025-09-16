/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4187C173
/// @DnDArgument : "expr" "inventoryBeginning"
/// @DnDArgument : "var" "roomSong"
roomSong = inventoryBeginning;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B8B8A63
/// @DnDArgument : "var" "global.currentSong"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "roomSong"
if(!(global.currentSong == roomSong)){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 14E745FF
	/// @DnDParent : 6B8B8A63
	/// @DnDArgument : "soundid" "global.currentSong"
	audio_stop_sound(global.currentSong);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0E9AD9B4
	/// @DnDParent : 6B8B8A63
	/// @DnDArgument : "soundid" "roomSong"
	audio_stop_sound(roomSong);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 167DC6FB
	/// @DnDParent : 6B8B8A63
	/// @DnDArgument : "soundid" "roomSong"
	/// @DnDArgument : "not" "1"
	var l167DC6FB_0 = roomSong;if (!audio_is_playing(l167DC6FB_0)){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 18DEF38C
		/// @DnDParent : 167DC6FB
		/// @DnDArgument : "value" "roomSong"
		/// @DnDArgument : "var" "currentSong"
		global.currentSong = roomSong;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 5006AFB3
		/// @DnDParent : 167DC6FB
		/// @DnDArgument : "soundid" "global.currentSong"
		/// @DnDArgument : "loop" "1"
		/// @DnDArgument : "offset" "1.5"
		audio_play_sound(global.currentSong, 0, 1, 1.0, 1.5, 1.0);
	
		/// @DnDAction : YoYo Games.Audio.Set_Audio_Loop_Start
		/// @DnDVersion : 1
		/// @DnDHash : 55B28541
		/// @DnDParent : 167DC6FB
		/// @DnDArgument : "idx" "global.currentSong"
		/// @DnDArgument : "offset" "24"
		audio_sound_loop_start(global.currentSong, 24);}}