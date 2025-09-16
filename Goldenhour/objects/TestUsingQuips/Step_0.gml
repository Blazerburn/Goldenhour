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
			/// @DnDArgument : "value" "itemBall"
			if(global.itemWrongType == itemBall){	/// @DnDAction : YoYo Games.Instances.Create_Instance
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
					/// @DnDInput : 8
					/// @DnDParent : 3282558B
					/// @DnDArgument : "expr" ""You try to stick the round ball into the square hole""
					/// @DnDArgument : "expr_1" ""...""
					/// @DnDArgument : "expr_2" ""...""
					/// @DnDArgument : "expr_3" ""What...""
					/// @DnDArgument : "expr_4" ""What are you doing?""
					/// @DnDArgument : "expr_5" ""Uh...""
					/// @DnDArgument : "expr_6" ""It obviously needs a plant on it first, silly!""
					/// @DnDArgument : "expr_7" ""???""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					/// @DnDArgument : "var_3" "text[3]"
					/// @DnDArgument : "var_4" "text[4]"
					/// @DnDArgument : "var_5" "text[5]"
					/// @DnDArgument : "var_6" "text[6]"
					/// @DnDArgument : "var_7" "text[7]"
					text[0] = "You try to stick the round ball into the square hole";
					text[1] = "...";
					text[2] = "...";
					text[3] = "What...";
					text[4] = "What are you doing?";
					text[5] = "Uh...";
					text[6] = "It obviously needs a plant on it first, silly!";
					text[7] = "???";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 62D77C90
					/// @DnDInput : 7
					/// @DnDParent : 3282558B
					/// @DnDArgument : "expr_1" "7"
					/// @DnDArgument : "expr_2" "700"
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
					textLast = 7;
					textWidth = 700;
					textX = 32;
					textY = 725;
					headshotTextWidth = 700;
					headshotTextX = 250;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 45C6057C
					/// @DnDInput : 8
					/// @DnDParent : 3282558B
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "expr_2" "1"
					/// @DnDArgument : "expr_3" "1"
					/// @DnDArgument : "expr_4" "1"
					/// @DnDArgument : "expr_5" "1"
					/// @DnDArgument : "expr_6" "1"
					/// @DnDArgument : "expr_7" "1"
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					/// @DnDArgument : "var_3" "headshotTexts[3]"
					/// @DnDArgument : "var_4" "headshotTexts[4]"
					/// @DnDArgument : "var_5" "headshotTexts[5]"
					/// @DnDArgument : "var_6" "headshotTexts[6]"
					/// @DnDArgument : "var_7" "headshotTexts[7]"
					headshotTexts[0] = 0;
					headshotTexts[1] = 1;
					headshotTexts[2] = 1;
					headshotTexts[3] = 1;
					headshotTexts[4] = 1;
					headshotTexts[5] = 1;
					headshotTexts[6] = 1;
					headshotTexts[7] = 1;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 63E6D4E5
					/// @DnDInput : 8
					/// @DnDParent : 3282558B
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "expr_2" "106"
					/// @DnDArgument : "expr_3" "102"
					/// @DnDArgument : "expr_4" "105"
					/// @DnDArgument : "expr_5" "2"
					/// @DnDArgument : "expr_6" "101"
					/// @DnDArgument : "expr_7" "8"
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					/// @DnDArgument : "var_3" "headshotHead[3]"
					/// @DnDArgument : "var_4" "headshotHead[4]"
					/// @DnDArgument : "var_5" "headshotHead[5]"
					/// @DnDArgument : "var_6" "headshotHead[6]"
					/// @DnDArgument : "var_7" "headshotHead[7]"
					headshotHead[0] = 0;
					headshotHead[1] = 1;
					headshotHead[2] = 106;
					headshotHead[3] = 102;
					headshotHead[4] = 105;
					headshotHead[5] = 2;
					headshotHead[6] = 101;
					headshotHead[7] = 8;
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
			/// @DnDArgument : "value" "ItemPlant"
			if(global.itemWrongType == ItemPlant){	/// @DnDAction : YoYo Games.Instances.Create_Instance
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
					/// @DnDInput : 4
					/// @DnDParent : 2EB37971
					/// @DnDArgument : "expr" ""The plant fits perfectly into the square hole!""
					/// @DnDArgument : "expr_1" ""But it seems to not reach far enough below to trigger the pressure plate""
					/// @DnDArgument : "expr_2" ""If only there was a red rubber ball attached to the bottom of it...""
					/// @DnDArgument : "expr_3" ""Wait where did that thought come from?""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					/// @DnDArgument : "var_3" "text[3]"
					text[0] = "The plant fits perfectly into the square hole!";
					text[1] = "But it seems to not reach far enough below to trigger the pressure plate";
					text[2] = "If only there was a red rubber ball attached to the bottom of it...";
					text[3] = "Wait where did that thought come from?";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1FEDE488
					/// @DnDInput : 7
					/// @DnDParent : 2EB37971
					/// @DnDArgument : "expr_1" "3"
					/// @DnDArgument : "expr_2" "850"
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
					textLast = 3;
					textWidth = 850;
					textX = 32;
					textY = 725;
					headshotTextWidth = 700;
					headshotTextX = 250;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5FDEAE4A
					/// @DnDInput : 4
					/// @DnDParent : 2EB37971
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					/// @DnDArgument : "var_3" "headshotTexts[3]"
					headshotTexts[0] = 0;
					headshotTexts[1] = 0;
					headshotTexts[2] = 0;
					headshotTexts[3] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4F250708
					/// @DnDInput : 4
					/// @DnDParent : 2EB37971
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					/// @DnDArgument : "var_3" "headshotHead[3]"
					headshotHead[0] = 0;
					headshotHead[1] = 0;
					headshotHead[2] = 0;
					headshotHead[3] = 0;
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
						/// @DnDArgument : "expr" ""The plant ball perfectly fits into the hole""
						/// @DnDArgument : "expr_1" ""Click!""
						/// @DnDArgument : "expr_2" ""The machine seems to have turned on""
						/// @DnDArgument : "var" "text[0]"
						/// @DnDArgument : "var_1" "text[1]"
						/// @DnDArgument : "var_2" "text[2]"
						text[0] = "The plant ball perfectly fits into the hole";
						text[1] = "Click!";
						text[2] = "The machine seems to have turned on";
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3F56FA51
						/// @DnDInput : 7
						/// @DnDParent : 63FDACBB
						/// @DnDArgument : "expr_1" "2"
						/// @DnDArgument : "expr_2" "850"
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
						textWidth = 850;
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