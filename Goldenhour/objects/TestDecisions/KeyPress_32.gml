/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6516BD8B
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 585FC670
	/// @DnDParent : 6516BD8B
	/// @DnDArgument : "var" "textSelected"
	if(textSelected == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5AB15138
		/// @DnDParent : 585FC670
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 63EABA46
		/// @DnDParent : 585FC670
		/// @DnDArgument : "objectid" "TestConvo"
		/// @DnDSaveInfo : "objectid" "TestConvo"
		instance_create_layer(0, 0, "Instances", TestConvo);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 1A3B5AC1
		/// @DnDApplyTo : {TestConvo}
		/// @DnDParent : 585FC670
		with(TestConvo) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3376D0AF
			/// @DnDInput : 6
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr" ""You poke it""
			/// @DnDArgument : "expr_1" ""...""
			/// @DnDArgument : "expr_2" ""...""
			/// @DnDArgument : "expr_3" ""Nothing happens""
			/// @DnDArgument : "expr_4" ""Fuck""
			/// @DnDArgument : "expr_5" ""Maybe if you ask it nicely?""
			/// @DnDArgument : "var" "text[0]"
			/// @DnDArgument : "var_1" "text[1]"
			/// @DnDArgument : "var_2" "text[2]"
			/// @DnDArgument : "var_3" "text[3]"
			/// @DnDArgument : "var_4" "text[4]"
			/// @DnDArgument : "var_5" "text[5]"
			text[0] = "You poke it";
			text[1] = "...";
			text[2] = "...";
			text[3] = "Nothing happens";
			text[4] = "Fuck";
			text[5] = "Maybe if you ask it nicely?";
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1C9BD382
			/// @DnDInput : 7
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr_1" "5"
			/// @DnDArgument : "expr_2" "900"
			/// @DnDArgument : "expr_3" "32"
			/// @DnDArgument : "expr_4" "725"
			/// @DnDArgument : "expr_5" "700"
			/// @DnDArgument : "expr_6" "250"
			/// @DnDArgument : "var" "textCurrent"
			/// @DnDArgument : "var_1" "textLast"
			/// @DnDArgument : "var_2" "textWidth"
			/// @DnDArgument : "var_3" "textX"
			/// @DnDArgument : "var_4" "textY"
			/// @DnDArgument : "var_5" "headshotTextWidth"
			/// @DnDArgument : "var_6" "headshotTextX"
			textCurrent = 0;
			textLast = 5;
			textWidth = 900;
			textX = 32;
			textY = 725;
			headshotTextWidth = 700;
			headshotTextX = 250;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5ED5FA11
			/// @DnDInput : 6
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr_2" "1"
			/// @DnDArgument : "expr_4" "1"
			/// @DnDArgument : "expr_5" "1"
			/// @DnDArgument : "var" "headshotTexts[0]"
			/// @DnDArgument : "var_1" "headshotTexts[1]"
			/// @DnDArgument : "var_2" "headshotTexts[2]"
			/// @DnDArgument : "var_3" "headshotTexts[3]"
			/// @DnDArgument : "var_4" "headshotTexts[4]"
			/// @DnDArgument : "var_5" "headshotTexts[5]"
			headshotTexts[0] = 0;
			headshotTexts[1] = 0;
			headshotTexts[2] = 1;
			headshotTexts[3] = 0;
			headshotTexts[4] = 1;
			headshotTexts[5] = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E36C70B
			/// @DnDInput : 6
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr_2" "1"
			/// @DnDArgument : "expr_4" "2"
			/// @DnDArgument : "expr_5" "104"
			/// @DnDArgument : "var" "headshotHead[0]"
			/// @DnDArgument : "var_1" "headshotHead[1]"
			/// @DnDArgument : "var_2" "headshotHead[2]"
			/// @DnDArgument : "var_3" "headshotHead[3]"
			/// @DnDArgument : "var_4" "headshotHead[4]"
			/// @DnDArgument : "var_5" "headshotHead[5]"
			headshotHead[0] = 0;
			headshotHead[1] = 0;
			headshotHead[2] = 1;
			headshotHead[3] = 0;
			headshotHead[4] = 2;
			headshotHead[5] = 104;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 445D4A35
			/// @DnDInput : 2
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "TestDecisions"
			/// @DnDArgument : "var" "decisionsTrue"
			/// @DnDArgument : "var_1" "decisions"
			decisionsTrue = 1;
			decisions = TestDecisions;
		}
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 653111A5
		/// @DnDParent : 585FC670
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18754B4F
	/// @DnDParent : 6516BD8B
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "1"
	if(textSelected == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
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
			/// @DnDArgument : "expr_3" "itemPlantBall"
			/// @DnDArgument : "var" "global.inventoryOpen"
			/// @DnDArgument : "var_1" "global.usingItem"
			/// @DnDArgument : "var_2" "global.Talking"
			/// @DnDArgument : "var_3" "itemNeeded"
			global.inventoryOpen = 1;
			global.usingItem = 1;
			global.Talking = 0;
			itemNeeded = itemPlantBall;
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
		/// @DnDArgument : "objectid" "TestUsingQuips"
		/// @DnDSaveInfo : "objectid" "TestUsingQuips"
		instance_create_layer(0, 0, "Instances", TestUsingQuips);
	
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
	/// @DnDArgument : "value" "2"
	if(textSelected == 2){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
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