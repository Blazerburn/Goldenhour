/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E52CCB0
/// @DnDArgument : "var" "global.currentSong"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "roomSong"
if(!(global.currentSong == roomSong)){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 15CDFB5C
	/// @DnDParent : 6E52CCB0
	/// @DnDArgument : "soundid" "global.currentSong"
	audio_stop_sound(global.currentSong);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 699978A0
	/// @DnDParent : 6E52CCB0
	/// @DnDArgument : "soundid" "roomSong"
	audio_stop_sound(roomSong);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 4798EC6E
	/// @DnDParent : 6E52CCB0
	/// @DnDArgument : "soundid" "roomSong"
	/// @DnDArgument : "not" "1"
	var l4798EC6E_0 = roomSong;if (!audio_is_playing(l4798EC6E_0)){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3D64445F
		/// @DnDParent : 4798EC6E
		/// @DnDArgument : "value" "roomSong"
		/// @DnDArgument : "var" "currentSong"
		global.currentSong = roomSong;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 6AB641D6
		/// @DnDParent : 4798EC6E
		/// @DnDArgument : "target" "songID"
		/// @DnDArgument : "soundid" "global.currentSong"
		/// @DnDArgument : "loop" "1"
		/// @DnDArgument : "offset" "roomSongPosition"
		songID = audio_play_sound(global.currentSong, 0, 1, 1.0, roomSongPosition, 1.0);}}