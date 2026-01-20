/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6516BD8B
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18754B4F
	/// @DnDParent : 6516BD8B
	/// @DnDArgument : "var" "textSelected"
	if(textSelected == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4BC1A7F5
		/// @DnDParent : 18754B4F
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FEB24D5
		/// @DnDParent : 18754B4F
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted = 20;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 785B7180
		/// @DnDApplyTo : {TestPlayer1}
		/// @DnDParent : 18754B4F
		with(TestPlayer1) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 157416B4
			/// @DnDInput : 4
			/// @DnDParent : 785B7180
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_3" "itemFixedPath"
			/// @DnDArgument : "var" "global.inventoryOpen"
			/// @DnDArgument : "var_1" "global.usingItem"
			/// @DnDArgument : "var_2" "global.Talking"
			/// @DnDArgument : "var_3" "itemNeeded"
			global.inventoryOpen = 1;
			global.usingItem = 1;
			global.Talking = 0;
			itemNeeded = itemFixedPath;
		}
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 31DFE061
		/// @DnDApplyTo : global.roomSong
		/// @DnDParent : 18754B4F
		with(global.roomSong) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 627FCCBD
			/// @DnDParent : 31DFE061
			/// @DnDArgument : "expr" "audio_sound_get_track_position(songID)"
			/// @DnDArgument : "var" "roomSongPosition"
			roomSongPosition = audio_sound_get_track_position(songID);
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 1E422588
			/// @DnDParent : 31DFE061
			/// @DnDArgument : "msg" "roomSongPosition"
			show_debug_message(string(roomSongPosition));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 59DC615C
		/// @DnDParent : 18754B4F
		/// @DnDArgument : "objectid" "InventoryMusicPlayer"
		/// @DnDSaveInfo : "objectid" "InventoryMusicPlayer"
		instance_create_layer(0, 0, "Instances", InventoryMusicPlayer);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7CDA4E7D
		/// @DnDParent : 18754B4F
		/// @DnDArgument : "objectid" "FixedPathUsingQuips"
		/// @DnDSaveInfo : "objectid" "FixedPathUsingQuips"
		instance_create_layer(0, 0, "Instances", FixedPathUsingQuips);
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 20B04F3E
		/// @DnDParent : 18754B4F
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18B05B26
	/// @DnDParent : 6516BD8B
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "1"
	if(textSelected == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7C7B5B5A
		/// @DnDParent : 18B05B26
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1B3B268B
		/// @DnDApplyTo : {TestInteractableTrue}
		/// @DnDParent : 18B05B26
		/// @DnDArgument : "objind" "TestInteractable"
		/// @DnDSaveInfo : "objind" "TestInteractable"
		with(TestInteractableTrue) instance_change(TestInteractable, true);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 1636D315
		/// @DnDInput : 2
		/// @DnDParent : 18B05B26
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 4BB9D19D
		/// @DnDParent : 18B05B26
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 66FBBF2C
		/// @DnDParent : 18B05B26
		exit;}}