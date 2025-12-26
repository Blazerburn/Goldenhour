/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 06D8CC8A
/// @DnDInput : 3
/// @DnDArgument : "expr" "RuinsDark"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "roomSong"
/// @DnDArgument : "var_1" "roomSongPosition"
/// @DnDArgument : "var_2" "songID"
roomSong = RuinsDark;
roomSongPosition = 1;
songID = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6EB43E8A
/// @DnDArgument : "value" "DarkCityMusicPlayer"
/// @DnDArgument : "var" "roomSong"
global.roomSong = DarkCityMusicPlayer;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F7607D2
/// @DnDArgument : "var" "global.currentSong"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "roomSong"
if(!(global.currentSong == roomSong)){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2BFF0994
	/// @DnDParent : 0F7607D2
	/// @DnDArgument : "soundid" "global.currentSong"
	audio_stop_sound(global.currentSong);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 34AFD993
	/// @DnDParent : 0F7607D2
	/// @DnDArgument : "soundid" "roomSong"
	audio_stop_sound(roomSong);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 6368E41A
	/// @DnDParent : 0F7607D2
	/// @DnDArgument : "soundid" "roomSong"
	/// @DnDArgument : "not" "1"
	var l6368E41A_0 = roomSong;if (!audio_is_playing(l6368E41A_0)){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3AD817AB
		/// @DnDParent : 6368E41A
		/// @DnDArgument : "value" "roomSong"
		/// @DnDArgument : "var" "currentSong"
		global.currentSong = roomSong;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 24D119D0
		/// @DnDParent : 6368E41A
		/// @DnDArgument : "target" "songID"
		/// @DnDArgument : "soundid" "global.currentSong"
		/// @DnDArgument : "loop" "1"
		songID = audio_play_sound(global.currentSong, 0, 1, 1.0, undefined, 1.0);}}