/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D299DC8
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68CBB6FF
	/// @DnDParent : 5D299DC8
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 662ADBF6
		/// @DnDParent : 68CBB6FF
		/// @DnDArgument : "var" "global.itemCheck"
		/// @DnDArgument : "value" "1"
		if(global.itemCheck == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1602F9C1
			/// @DnDParent : 662ADBF6
			/// @DnDArgument : "var" "global.itemWrongType"
			/// @DnDArgument : "value" "itemBrokenPath"
			if(global.itemWrongType == itemBrokenPath){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 2C82164B
				/// @DnDParent : 1602F9C1
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 3282558B
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 1602F9C1
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4721E3E6
					/// @DnDInput : 6
					/// @DnDParent : 3282558B
					/// @DnDArgument : "expr" ""You place down the broken path pieces where they belong""
					/// @DnDArgument : "expr_1" ""...""
					/// @DnDArgument : "expr_2" ""It's still broken...""
					/// @DnDArgument : "expr_3" ""What did you think that would accomplish?""
					/// @DnDArgument : "expr_4" ""You quickly up the pieces, checking over your shoulder to see if anyone saw you""
					/// @DnDArgument : "expr_5" ""Thankfully it doesn't look like anyone is around""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					/// @DnDArgument : "var_3" "text[3]"
					/// @DnDArgument : "var_4" "text[4]"
					/// @DnDArgument : "var_5" "text[5]"
					text[0] = "You place down the broken path pieces where they belong";
					text[1] = "...";
					text[2] = "It's still broken...";
					text[3] = "What did you think that would accomplish?";
					text[4] = "You quickly up the pieces, checking over your shoulder to see if anyone saw you";
					text[5] = "Thankfully it doesn't look like anyone is around";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 62D77C90
					/// @DnDInput : 7
					/// @DnDParent : 3282558B
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
					/// @DnDHash : 45C6057C
					/// @DnDInput : 6
					/// @DnDParent : 3282558B
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					/// @DnDArgument : "var_3" "headshotTexts[3]"
					/// @DnDArgument : "var_4" "headshotTexts[4]"
					/// @DnDArgument : "var_5" "headshotTexts[5]"
					headshotTexts[0] = 0;
					headshotTexts[1] = 0;
					headshotTexts[2] = 0;
					headshotTexts[3] = 0;
					headshotTexts[4] = 0;
					headshotTexts[5] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 63E6D4E5
					/// @DnDInput : 6
					/// @DnDParent : 3282558B
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					/// @DnDArgument : "var_3" "headshotHead[3]"
					/// @DnDArgument : "var_4" "headshotHead[4]"
					/// @DnDArgument : "var_5" "headshotHead[5]"
					headshotHead[0] = 0;
					headshotHead[1] = 0;
					headshotHead[2] = 0;
					headshotHead[3] = 0;
					headshotHead[4] = 0;
					headshotHead[5] = 0;
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 752FB7E9
				/// @DnDParent : 1602F9C1
				/// @DnDArgument : "var" "global.itemCheck"
				global.itemCheck = 0;
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 1F50F1B8
				/// @DnDParent : 1602F9C1
				exit;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 33504402
			/// @DnDParent : 662ADBF6
			/// @DnDArgument : "var" "global.itemWrongType"
			/// @DnDArgument : "value" "itemStrangeGel"
			if(global.itemWrongType == itemStrangeGel){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 2E3ABB9C
				/// @DnDParent : 33504402
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 2EB37971
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 33504402
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7E364379
					/// @DnDInput : 2
					/// @DnDParent : 2EB37971
					/// @DnDArgument : "expr" ""You could put some of the strange gel on the floor""
					/// @DnDArgument : "expr_1" ""But... it might make more sense to place it on the broken piece and then stick that to the floor""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					text[0] = "You could put some of the strange gel on the floor";
					text[1] = "But... it might make more sense to place it on the broken piece and then stick that to the floor";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1FEDE488
					/// @DnDInput : 7
					/// @DnDParent : 2EB37971
					/// @DnDArgument : "expr_1" "1"
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
					textLast = 1;
					textWidth = 900;
					textX = 32;
					textY = 725;
					headshotTextWidth = 700;
					headshotTextX = 250;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5FDEAE4A
					/// @DnDInput : 2
					/// @DnDParent : 2EB37971
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					headshotTexts[0] = 0;
					headshotTexts[1] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4F250708
					/// @DnDInput : 2
					/// @DnDParent : 2EB37971
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					headshotHead[0] = 0;
					headshotHead[1] = 0;
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2584C7B6
				/// @DnDParent : 33504402
				/// @DnDArgument : "var" "global.itemCheck"
				global.itemCheck = 0;
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 123E7B74
				/// @DnDParent : 33504402
				exit;}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0ED1F4A3
		/// @DnDParent : 68CBB6FF
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5880A363
			/// @DnDParent : 0ED1F4A3
			/// @DnDArgument : "var" "global.itemCheck"
			/// @DnDArgument : "value" "-1"
			if(global.itemCheck == -1){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 67EB9166
				/// @DnDParent : 5880A363
				/// @DnDArgument : "msg" ""Destroy quips""
				show_debug_message(string("Destroy quips"));
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1F557E09
				/// @DnDParent : 5880A363
				instance_destroy();}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 487F7342
			/// @DnDParent : 0ED1F4A3
			else{	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 01844D44
				/// @DnDParent : 487F7342
				/// @DnDArgument : "var" "global.itemCheck"
				/// @DnDArgument : "value" "2"
				if(global.itemCheck == 2){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
					/// @DnDVersion : 1
					/// @DnDHash : 12A402D1
					/// @DnDParent : 01844D44
					/// @DnDArgument : "msg" ""Used correct item""
					show_debug_message(string("Used correct item"));
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1EA8A976
					/// @DnDParent : 01844D44
					/// @DnDArgument : "var" "global.inventoryOpen"
					global.inventoryOpen = 0;
				
					/// @DnDAction : YoYo Games.Instances.Call_User_Event
					/// @DnDVersion : 1
					/// @DnDHash : 1C60A52D
					/// @DnDApplyTo : {BrokenPath_obj}
					/// @DnDParent : 01844D44
					/// @DnDArgument : "event" "1"
					with(BrokenPath_obj) {
					event_user(1);
					}
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 6C859944
					/// @DnDParent : 01844D44
					/// @DnDArgument : "objectid" "TestConvo"
					/// @DnDSaveInfo : "objectid" "TestConvo"
					instance_create_layer(0, 0, "Instances", TestConvo);
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 00912957
					/// @DnDApplyTo : {TestInteractable}
					/// @DnDParent : 01844D44
					with(TestInteractable) {
						/// @DnDAction : YoYo Games.Instances.Call_User_Event
						/// @DnDVersion : 1
						/// @DnDHash : 03F908B3
						/// @DnDParent : 00912957
						event_user(0);
					}
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 63FDACBB
					/// @DnDApplyTo : {TestConvo}
					/// @DnDParent : 01844D44
					with(TestConvo) {
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 04E52BC6
						/// @DnDInput : 3
						/// @DnDParent : 63FDACBB
						/// @DnDArgument : "expr" ""The path pieces you stuck together fit into where the path was""
						/// @DnDArgument : "expr_1" ""It fits perfectly!""
						/// @DnDArgument : "expr_2" ""It seems like you should be able to move the box across""
						/// @DnDArgument : "var" "text[0]"
						/// @DnDArgument : "var_1" "text[1]"
						/// @DnDArgument : "var_2" "text[2]"
						text[0] = "The path pieces you stuck together fit into where the path was";
						text[1] = "It fits perfectly!";
						text[2] = "It seems like you should be able to move the box across";
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3F56FA51
						/// @DnDInput : 7
						/// @DnDParent : 63FDACBB
						/// @DnDArgument : "expr_1" "2"
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
						textLast = 2;
						textWidth = 900;
						textX = 32;
						textY = 725;
						headshotTextWidth = 700;
						headshotTextX = 250;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6B3DE8D7
						/// @DnDInput : 3
						/// @DnDParent : 63FDACBB
						/// @DnDArgument : "var" "headshotTexts[0]"
						/// @DnDArgument : "var_1" "headshotTexts[1]"
						/// @DnDArgument : "var_2" "headshotTexts[2]"
						headshotTexts[0] = 0;
						headshotTexts[1] = 0;
						headshotTexts[2] = 0;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5AD885F6
						/// @DnDInput : 3
						/// @DnDParent : 63FDACBB
						/// @DnDArgument : "var" "headshotHead[0]"
						/// @DnDArgument : "var_1" "headshotHead[1]"
						/// @DnDArgument : "var_2" "headshotHead[2]"
						headshotHead[0] = 0;
						headshotHead[1] = 0;
						headshotHead[2] = 0;
					}
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5AE54F3F
					/// @DnDParent : 01844D44
					/// @DnDArgument : "var" "global.itemCheck"
					global.itemCheck = 0;
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 1891E96B
					/// @DnDParent : 01844D44
					instance_destroy();
				
					/// @DnDAction : YoYo Games.Common.Exit_Event
					/// @DnDVersion : 1
					/// @DnDHash : 092F2F8A
					/// @DnDParent : 01844D44
					exit;}}}}}