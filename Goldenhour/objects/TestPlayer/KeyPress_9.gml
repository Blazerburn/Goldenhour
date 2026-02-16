/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31DF3A85
/// @DnDArgument : "var" "global.inventoryOpen"
if(global.inventoryOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6740C5D2
	/// @DnDParent : 31DF3A85
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 01A2F7C4
		/// @DnDApplyTo : global.roomSong
		/// @DnDParent : 6740C5D2
		with(global.roomSong) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 288760F7
			/// @DnDParent : 01A2F7C4
			/// @DnDArgument : "expr" "audio_sound_get_track_position(songID)"
			/// @DnDArgument : "var" "roomSongPosition"
			roomSongPosition = audio_sound_get_track_position(songID);
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 6E4539CC
			/// @DnDParent : 01A2F7C4
			/// @DnDArgument : "msg" "roomSongPosition"
			show_debug_message(string(roomSongPosition));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5FA7CB86
		/// @DnDParent : 6740C5D2
		/// @DnDArgument : "objectid" "InventoryMusicPlayer"
		/// @DnDSaveInfo : "objectid" "InventoryMusicPlayer"
		instance_create_layer(0, 0, "Instances", InventoryMusicPlayer);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58D379F1
		/// @DnDInput : 2
		/// @DnDParent : 6740C5D2
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "global.inventoryOpen"
		/// @DnDArgument : "var_1" "global.shiftText"
		global.inventoryOpen = 1;
		global.shiftText = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3812A932
		/// @DnDParent : 6740C5D2
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.Immobilize"
		global.Immobilize = 1;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 2F0E2C77
		/// @DnDParent : 6740C5D2
		/// @DnDArgument : "msg" "itemArray"
		show_debug_message(string(itemArray));}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 457503EA
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 731DD212
	/// @DnDParent : 457503EA
	/// @DnDArgument : "var" "global.combining"
	if(global.combining == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0380BF15
		/// @DnDParent : 731DD212
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4347B7DE
			/// @DnDParent : 0380BF15
			/// @DnDArgument : "var" "global.Talking"
			if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1D8FE8ED
				/// @DnDParent : 4347B7DE
				/// @DnDArgument : "var" "global.infoOpen"
				if(global.infoOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 05E9D442
					/// @DnDParent : 1D8FE8ED
					/// @DnDArgument : "var" "global.inventoryOpen"
					global.inventoryOpen = 0;
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 25BB4B2A
					/// @DnDApplyTo : {InventoryMusicPlayer}
					/// @DnDParent : 1D8FE8ED
					with(InventoryMusicPlayer) instance_destroy();
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 172300B3
					/// @DnDApplyTo : global.roomSong
					/// @DnDParent : 1D8FE8ED
					with(global.roomSong) {
						/// @DnDAction : YoYo Games.Instances.Call_User_Event
						/// @DnDVersion : 1
						/// @DnDHash : 2DAA4B76
						/// @DnDParent : 172300B3
						event_user(0);
					
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 3EF99DE4
						/// @DnDParent : 172300B3
						/// @DnDArgument : "msg" ""Restarted room song""
						show_debug_message(string("Restarted room song"));
					}
				
					/// @DnDAction : YoYo Games.Common.Set_Global
					/// @DnDVersion : 1
					/// @DnDHash : 2AED7516
					/// @DnDInput : 2
					/// @DnDParent : 1D8FE8ED
					/// @DnDArgument : "var" "global.Immobilize"
					/// @DnDArgument : "var_1" "global.usingItem"
					global.Immobilize = 0;
					global.usingItem = 0;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 405886CD
				/// @DnDParent : 4347B7DE
				else{	/// @DnDAction : YoYo Games.Common.Set_Global
					/// @DnDVersion : 1
					/// @DnDHash : 2195AFCE
					/// @DnDParent : 405886CD
					/// @DnDArgument : "var" "global.infoOpen"
					global.infoOpen = 0;
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 1F42AB09
					/// @DnDApplyTo : {InventoryItemInfo1}
					/// @DnDParent : 405886CD
					with(InventoryItemInfo1) instance_destroy();}}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 23C03DD5
		/// @DnDParent : 731DD212
		else{	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 1057C6DF
			/// @DnDParent : 23C03DD5
			/// @DnDArgument : "var" "global.selectionOpen"
			global.selectionOpen = 0;
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4C299C32
			/// @DnDApplyTo : {TestInventoryDecisions}
			/// @DnDParent : 23C03DD5
			with(TestInventoryDecisions) instance_destroy();}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 468EEF03
	/// @DnDParent : 457503EA
	else{	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3A436BA5
		/// @DnDParent : 468EEF03
		/// @DnDArgument : "var" "global.combining"
		global.combining = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2793371D
		/// @DnDInput : 6
		/// @DnDParent : 468EEF03
		/// @DnDArgument : "var" "itemCombineSelect1"
		/// @DnDArgument : "var_1" "itemCombineSelect2"
		/// @DnDArgument : "var_2" "itemCombinePos1"
		/// @DnDArgument : "var_3" "itemCombinePos2"
		/// @DnDArgument : "var_4" "itemCombineType1"
		/// @DnDArgument : "var_5" "itemCombineType2"
		itemCombineSelect1 = 0;
		itemCombineSelect2 = 0;
		itemCombinePos1 = 0;
		itemCombinePos2 = 0;
		itemCombineType1 = 0;
		itemCombineType2 = 0;}}