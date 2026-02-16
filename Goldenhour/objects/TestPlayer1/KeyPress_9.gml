/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11214EB6
/// @DnDArgument : "var" "global.inventoryOpen"
if(global.inventoryOpen == 0){	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 57B14F0D
	/// @DnDApplyTo : global.roomSong
	/// @DnDParent : 11214EB6
	with(global.roomSong) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5917D43F
		/// @DnDParent : 57B14F0D
		/// @DnDArgument : "expr" "audio_sound_get_track_position(songID)"
		/// @DnDArgument : "var" "roomSongPosition"
		roomSongPosition = audio_sound_get_track_position(songID);
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 2625A876
		/// @DnDParent : 57B14F0D
		/// @DnDArgument : "msg" "roomSongPosition"
		show_debug_message(string(roomSongPosition));
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3BEA4F22
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "objectid" "InventoryMusicPlayer"
	/// @DnDSaveInfo : "objectid" "InventoryMusicPlayer"
	instance_create_layer(0, 0, "Instances", InventoryMusicPlayer);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F61FB7B
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.inventoryOpen"
	global.inventoryOpen = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 477A8304
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.Immobilize"
	global.Immobilize = 1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 502E08E1
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "msg" "itemArray"
	show_debug_message(string(itemArray));}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 580293E8
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 010CDD0F
	/// @DnDParent : 580293E8
	/// @DnDArgument : "var" "global.combining"
	if(global.combining == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57A7F94D
		/// @DnDParent : 010CDD0F
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E256BDA
			/// @DnDParent : 57A7F94D
			/// @DnDArgument : "var" "global.Talking"
			if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 74AD06B6
				/// @DnDParent : 3E256BDA
				/// @DnDArgument : "var" "global.infoOpen"
				if(global.infoOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0AAD5DDE
					/// @DnDParent : 74AD06B6
					/// @DnDArgument : "var" "global.inventoryOpen"
					global.inventoryOpen = 0;
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 45C8F777
					/// @DnDApplyTo : {InventoryMusicPlayer}
					/// @DnDParent : 74AD06B6
					with(InventoryMusicPlayer) instance_destroy();
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 78B7C3F1
					/// @DnDApplyTo : global.roomSong
					/// @DnDParent : 74AD06B6
					with(global.roomSong) {
						/// @DnDAction : YoYo Games.Instances.Call_User_Event
						/// @DnDVersion : 1
						/// @DnDHash : 5D727E7D
						/// @DnDParent : 78B7C3F1
						event_user(0);
					
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 51293F87
						/// @DnDParent : 78B7C3F1
						/// @DnDArgument : "msg" ""Restarted room song""
						show_debug_message(string("Restarted room song"));
					}
				
					/// @DnDAction : YoYo Games.Common.Set_Global
					/// @DnDVersion : 1
					/// @DnDHash : 728C614A
					/// @DnDInput : 2
					/// @DnDParent : 74AD06B6
					/// @DnDArgument : "var" "global.Immobilize"
					/// @DnDArgument : "var_1" "global.usingItem"
					global.Immobilize = 0;
					global.usingItem = 0;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 4F19E64F
				/// @DnDParent : 3E256BDA
				else{	/// @DnDAction : YoYo Games.Common.Set_Global
					/// @DnDVersion : 1
					/// @DnDHash : 02C439EE
					/// @DnDParent : 4F19E64F
					/// @DnDArgument : "var" "global.infoOpen"
					global.infoOpen = 0;
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 5962C27D
					/// @DnDApplyTo : {InventoryItemInfo}
					/// @DnDParent : 4F19E64F
					with(InventoryItemInfo1) instance_destroy();}}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6C674170
		/// @DnDParent : 010CDD0F
		else{	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5E93D58E
			/// @DnDParent : 6C674170
			/// @DnDArgument : "var" "global.selectionOpen"
			global.selectionOpen = 0;
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2776D9AF
			/// @DnDApplyTo : {TestInventoryDecisions}
			/// @DnDParent : 6C674170
			with(TestInventoryDecisions) instance_destroy();}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 02B8DCA6
	/// @DnDParent : 580293E8
	else{	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 350ED13B
		/// @DnDParent : 02B8DCA6
		/// @DnDArgument : "var" "global.combining"
		global.combining = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D1AF548
		/// @DnDInput : 6
		/// @DnDParent : 02B8DCA6
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