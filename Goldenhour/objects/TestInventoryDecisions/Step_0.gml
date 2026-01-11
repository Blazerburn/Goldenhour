/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D3D086E
/// @DnDArgument : "var" "textSelected"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "textMin"
if(textSelected > textMin){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0023A1E6
	/// @DnDParent : 4D3D086E
	/// @DnDArgument : "key" "ord("W")"
	var l0023A1E6_0;l0023A1E6_0 = keyboard_check_pressed(ord("W"));if (l0023A1E6_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 371247F8
		/// @DnDParent : 0023A1E6
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textSelected"
		textSelected += -1;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 69914813
		/// @DnDParent : 0023A1E6
		/// @DnDArgument : "msg" "textSelected"
		show_debug_message(string(textSelected));}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D1F69D6
/// @DnDArgument : "var" "textSelected"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "textMax"
if(textSelected < textMax){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A7AFBEF
	/// @DnDParent : 1D1F69D6
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "textLimitBottom"
	if(textSelected > textLimitBottom){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 060912A6
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textLimitBottom"
		textLimitBottom += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55072ED9
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textLimitTop"
		textLimitTop += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09F41F3B
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textPastLimitBottom"
		textPastLimitBottom += 1;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 626DE661
		/// @DnDInput : 2
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "msg" "textLimitTop"
		/// @DnDArgument : "msg_1" "textLimitBottom"
		show_debug_message(string(textLimitTop) + @"
		" + string(textLimitBottom));
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 1D8A95DC
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "key" "ord("S")"
		var l1D8A95DC_0;l1D8A95DC_0 = keyboard_check_pressed(ord("S"));if (l1D8A95DC_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 666F0F4A
			/// @DnDParent : 1D8A95DC
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "textSelected"
			textSelected += 1;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 06207FAB
	/// @DnDParent : 1D1F69D6
	else{	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 2EF24EE2
		/// @DnDParent : 06207FAB
		/// @DnDArgument : "key" "ord("S")"
		var l2EF24EE2_0;l2EF24EE2_0 = keyboard_check_pressed(ord("S"));if (l2EF24EE2_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45C19F03
			/// @DnDParent : 2EF24EE2
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "textSelected"
			textSelected += 1;
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 33DCD36D
			/// @DnDParent : 2EF24EE2
			/// @DnDArgument : "msg" "textSelected"
			show_debug_message(string(textSelected));}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74C1E59C
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 384D017A
	/// @DnDParent : 74C1E59C
	/// @DnDArgument : "var" "textSelected"
	if(textSelected == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 0B97FFE6
		/// @DnDParent : 384D017A
		var l0B97FFE6_0;l0B97FFE6_0 = keyboard_check_pressed(vk_space);if (l0B97FFE6_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7A53DBF6
			/// @DnDParent : 0B97FFE6
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 50BA33DB
			/// @DnDInput : 2
			/// @DnDParent : 0B97FFE6
			/// @DnDArgument : "value_1" "1"
			/// @DnDArgument : "var" "global.selectionOpen"
			/// @DnDArgument : "var_1" "global.combining"
			global.selectionOpen = 0;
			global.combining = 1;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 39702A0F
			/// @DnDParent : 0B97FFE6
			exit;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BA26C90
	/// @DnDParent : 74C1E59C
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "1"
	if(textSelected == 1){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 3150B853
		/// @DnDParent : 5BA26C90
		var l3150B853_0;l3150B853_0 = keyboard_check_pressed(vk_space);if (l3150B853_0){	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 1195AE76
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "global.selectionOpen"
			global.selectionOpen = 0;
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 26B13BE9
			/// @DnDParent : 3150B853
			/// @DnDArgument : "msg" "itemSelectedType"
			show_debug_message(string(itemSelectedType));
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4028720B
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelectedType"
			/// @DnDArgument : "value" "1"
			if(itemSelectedType == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 67716A22
				/// @DnDParent : 4028720B
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 54E56D56
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 4028720B
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6918919D
					/// @DnDInput : 4
					/// @DnDParent : 54E56D56
					/// @DnDArgument : "expr" ""It's a rubber red ball""
					/// @DnDArgument : "expr_1" ""...""
					/// @DnDArgument : "expr_2" ""That's it""
					/// @DnDArgument : "expr_3" ""There's nothing else""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					/// @DnDArgument : "var_3" "text[3]"
					text[0] = "It's a rubber red ball";
					text[1] = "...";
					text[2] = "That's it";
					text[3] = "There's nothing else";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 16590C93
					/// @DnDInput : 7
					/// @DnDParent : 54E56D56
					/// @DnDArgument : "expr_1" "3"
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
					textLast = 3;
					textWidth = 900;
					textX = 32;
					textY = 725;
					headshotTextWidth = 700;
					headshotTextX = 250;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 33D8D410
					/// @DnDInput : 4
					/// @DnDParent : 54E56D56
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
					/// @DnDHash : 038B2F21
					/// @DnDInput : 4
					/// @DnDParent : 54E56D56
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					/// @DnDArgument : "var_3" "headshotHead[3]"
					headshotHead[0] = 0;
					headshotHead[1] = 0;
					headshotHead[2] = 0;
					headshotHead[3] = 0;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75DCC1A6
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelectedType"
			/// @DnDArgument : "value" "2"
			if(itemSelectedType == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3249EC33
				/// @DnDParent : 75DCC1A6
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 5B25E714
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 75DCC1A6
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2E3AFDFA
					/// @DnDInput : 4
					/// @DnDParent : 5B25E714
					/// @DnDArgument : "expr" ""It's a small green plant in a brown pot""
					/// @DnDArgument : "expr_1" ""That looks like something from the bayou!""
					/// @DnDArgument : "expr_2" ""Hmm""
					/// @DnDArgument : "expr_3" ""Maybe we should head there""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					/// @DnDArgument : "var_3" "text[3]"
					text[0] = "It's a small green plant in a brown pot";
					text[1] = "That looks like something from the bayou!";
					text[2] = "Hmm";
					text[3] = "Maybe we should head there";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 400CB3D3
					/// @DnDInput : 7
					/// @DnDParent : 5B25E714
					/// @DnDArgument : "expr_1" "3"
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
					textLast = 3;
					textWidth = 900;
					textX = 32;
					textY = 725;
					headshotTextWidth = 700;
					headshotTextX = 250;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 570CB096
					/// @DnDInput : 4
					/// @DnDParent : 5B25E714
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					/// @DnDArgument : "var_3" "headshotTexts[3]"
					headshotTexts[0] = 0;
					headshotTexts[1] = 1;
					headshotTexts[2] = 0;
					headshotTexts[3] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 59896580
					/// @DnDInput : 4
					/// @DnDParent : 5B25E714
					/// @DnDArgument : "expr_1" "103"
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					/// @DnDArgument : "var_3" "headshotHead[3]"
					headshotHead[0] = 0;
					headshotHead[1] = 103;
					headshotHead[2] = 0;
					headshotHead[3] = 0;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24F90DB4
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelectedType"
			/// @DnDArgument : "value" "3"
			if(itemSelectedType == 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3BBD2289
				/// @DnDParent : 24F90DB4
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 1A37EAD1
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 24F90DB4
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 25990C43
					/// @DnDInput : 3
					/// @DnDParent : 1A37EAD1
					/// @DnDArgument : "expr" ""How did you even do that???""
					/// @DnDArgument : "expr_1" ""...""
					/// @DnDArgument : "expr_2" ""You honestly have no idea""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					text[0] = "How did you even do that???";
					text[1] = "...";
					text[2] = "You honestly have no idea";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5AC9707D
					/// @DnDInput : 7
					/// @DnDParent : 1A37EAD1
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
					/// @DnDHash : 268FCA7D
					/// @DnDInput : 3
					/// @DnDParent : 1A37EAD1
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					headshotTexts[0] = 1;
					headshotTexts[1] = 0;
					headshotTexts[2] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 77ABEF4E
					/// @DnDInput : 3
					/// @DnDParent : 1A37EAD1
					/// @DnDArgument : "expr" "105"
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					headshotHead[0] = 105;
					headshotHead[1] = 0;
					headshotHead[2] = 0;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4586F5E9
			/// @DnDComment : Strange Gel
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelectedType"
			/// @DnDArgument : "value" "4"
			if(itemSelectedType == 4){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6B30EB10
				/// @DnDParent : 4586F5E9
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 7821F6D9
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 4586F5E9
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7E3073F7
					/// @DnDInput : 3
					/// @DnDParent : 7821F6D9
					/// @DnDArgument : "expr" ""A glowing sticky gel like substance""
					/// @DnDArgument : "expr_1" ""Like... very sticky""
					/// @DnDArgument : "expr_2" ""Maybe you can use it to stick something together?""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					text[0] = "A glowing sticky gel like substance";
					text[1] = "Like... very sticky";
					text[2] = "Maybe you can use it to stick something together?";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 164D885B
					/// @DnDInput : 7
					/// @DnDParent : 7821F6D9
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
					/// @DnDHash : 57472B7C
					/// @DnDInput : 3
					/// @DnDParent : 7821F6D9
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					headshotTexts[0] = 0;
					headshotTexts[1] = 0;
					headshotTexts[2] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2D41F3FD
					/// @DnDInput : 3
					/// @DnDParent : 7821F6D9
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					headshotHead[0] = 0;
					headshotHead[1] = 0;
					headshotHead[2] = 0;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3D57790F
			/// @DnDComment : Bioluminescent Rock
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelectedType"
			/// @DnDArgument : "value" "5"
			if(itemSelectedType == 5){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6E27EB22
				/// @DnDParent : 3D57790F
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 5E669FB1
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 3D57790F
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 624DDB10
					/// @DnDInput : 2
					/// @DnDParent : 5E669FB1
					/// @DnDArgument : "expr" ""The star shaped rock glows in your hands as you look at it""
					/// @DnDArgument : "expr_1" ""It seems to be exerting some sort of powerful energy""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					text[0] = "The star shaped rock glows in your hands as you look at it";
					text[1] = "It seems to be exerting some sort of powerful energy";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 085976E4
					/// @DnDInput : 7
					/// @DnDParent : 5E669FB1
					/// @DnDArgument : "expr_1" "1"
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
					textLast = 1;
					textWidth = 850;
					textX = 32;
					textY = 725;
					headshotTextWidth = 700;
					headshotTextX = 250;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0B7DAE50
					/// @DnDInput : 2
					/// @DnDParent : 5E669FB1
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					headshotTexts[0] = 0;
					headshotTexts[1] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 21555BDD
					/// @DnDInput : 2
					/// @DnDParent : 5E669FB1
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					headshotHead[0] = 0;
					headshotHead[1] = 0;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 03097189
			/// @DnDComment : Broken Glass Shard
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelectedType"
			/// @DnDArgument : "value" "6"
			if(itemSelectedType == 6){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0F4D29CD
				/// @DnDParent : 03097189
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 4925EF59
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 03097189
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 022F2FC4
					/// @DnDInput : 3
					/// @DnDParent : 4925EF59
					/// @DnDArgument : "expr" ""A piece of broken glass from the mosaic""
					/// @DnDArgument : "expr_1" ""It's uh... quite sharp""
					/// @DnDArgument : "expr_2" ""Which is I guess how you would expect broken glass to be now that you think of it""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					text[0] = "A piece of broken glass from the mosaic";
					text[1] = "It's uh... quite sharp";
					text[2] = "Which is I guess how you would expect broken glass to be now that you think of it";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0C9C17DF
					/// @DnDInput : 7
					/// @DnDParent : 4925EF59
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
					/// @DnDHash : 24C2B625
					/// @DnDInput : 3
					/// @DnDParent : 4925EF59
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					headshotTexts[0] = 1;
					headshotTexts[1] = 0;
					headshotTexts[2] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2C0A826A
					/// @DnDInput : 3
					/// @DnDParent : 4925EF59
					/// @DnDArgument : "expr" "105"
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					headshotHead[0] = 105;
					headshotHead[1] = 0;
					headshotHead[2] = 0;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 343AB802
			/// @DnDComment : Chisel Rock
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelectedType"
			/// @DnDArgument : "value" "7"
			if(itemSelectedType == 7){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5C88F32A
				/// @DnDParent : 343AB802
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 5AAC2112
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 343AB802
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3EED10A8
					/// @DnDInput : 3
					/// @DnDParent : 5AAC2112
					/// @DnDArgument : "expr" ""How did you even do that???""
					/// @DnDArgument : "expr_1" ""...""
					/// @DnDArgument : "expr_2" ""You honestly have no idea""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					text[0] = "How did you even do that???";
					text[1] = "...";
					text[2] = "You honestly have no idea";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4E42F501
					/// @DnDInput : 7
					/// @DnDParent : 5AAC2112
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
					/// @DnDHash : 4B4159AF
					/// @DnDInput : 3
					/// @DnDParent : 5AAC2112
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					headshotTexts[0] = 1;
					headshotTexts[1] = 0;
					headshotTexts[2] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4268D329
					/// @DnDInput : 3
					/// @DnDParent : 5AAC2112
					/// @DnDArgument : "expr" "105"
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					headshotHead[0] = 105;
					headshotHead[1] = 0;
					headshotHead[2] = 0;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 35A5C6EA
			/// @DnDComment : Crystalline Hammer
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelectedType"
			/// @DnDArgument : "value" "8"
			if(itemSelectedType == 8){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 50D37D14
				/// @DnDParent : 35A5C6EA
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 00A33C18
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 35A5C6EA
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 77927268
					/// @DnDInput : 3
					/// @DnDParent : 00A33C18
					/// @DnDArgument : "expr" ""How did you even do that???""
					/// @DnDArgument : "expr_1" ""...""
					/// @DnDArgument : "expr_2" ""You honestly have no idea""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					text[0] = "How did you even do that???";
					text[1] = "...";
					text[2] = "You honestly have no idea";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 597C6632
					/// @DnDInput : 7
					/// @DnDParent : 00A33C18
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
					/// @DnDHash : 4CBEA3CF
					/// @DnDInput : 3
					/// @DnDParent : 00A33C18
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					headshotTexts[0] = 1;
					headshotTexts[1] = 0;
					headshotTexts[2] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 64667C82
					/// @DnDInput : 3
					/// @DnDParent : 00A33C18
					/// @DnDArgument : "expr" "105"
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					headshotHead[0] = 105;
					headshotHead[1] = 0;
					headshotHead[2] = 0;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2235B756
			/// @DnDComment : Secret Book 10th Hour
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelectedType"
			/// @DnDArgument : "value" "9"
			if(itemSelectedType == 9){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1B3CED07
				/// @DnDParent : 2235B756
				/// @DnDArgument : "objectid" "TestConvo"
				/// @DnDSaveInfo : "objectid" "TestConvo"
				instance_create_layer(0, 0, "Instances", TestConvo);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 6C8B3720
				/// @DnDApplyTo : {TestConvo}
				/// @DnDParent : 2235B756
				with(TestConvo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7E84A9F1
					/// @DnDInput : 3
					/// @DnDParent : 6C8B3720
					/// @DnDArgument : "expr" ""How did you even do that???""
					/// @DnDArgument : "expr_1" ""...""
					/// @DnDArgument : "expr_2" ""You honestly have no idea""
					/// @DnDArgument : "var" "text[0]"
					/// @DnDArgument : "var_1" "text[1]"
					/// @DnDArgument : "var_2" "text[2]"
					text[0] = "How did you even do that???";
					text[1] = "...";
					text[2] = "You honestly have no idea";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2A645A08
					/// @DnDInput : 7
					/// @DnDParent : 6C8B3720
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
					/// @DnDHash : 4CD245D1
					/// @DnDInput : 3
					/// @DnDParent : 6C8B3720
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "var" "headshotTexts[0]"
					/// @DnDArgument : "var_1" "headshotTexts[1]"
					/// @DnDArgument : "var_2" "headshotTexts[2]"
					headshotTexts[0] = 1;
					headshotTexts[1] = 0;
					headshotTexts[2] = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 60D47BCF
					/// @DnDInput : 3
					/// @DnDParent : 6C8B3720
					/// @DnDArgument : "expr" "105"
					/// @DnDArgument : "var" "headshotHead[0]"
					/// @DnDArgument : "var_1" "headshotHead[1]"
					/// @DnDArgument : "var_2" "headshotHead[2]"
					headshotHead[0] = 105;
					headshotHead[1] = 0;
					headshotHead[2] = 0;
				}}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78678C26
			/// @DnDParent : 3150B853
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 57A4C32A
			/// @DnDParent : 3150B853
			exit;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7338ADB8
	/// @DnDParent : 74C1E59C
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "2"
	if(textSelected == 2){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 3DD0DC11
		/// @DnDParent : 7338ADB8
		var l3DD0DC11_0;l3DD0DC11_0 = keyboard_check_pressed(vk_space);if (l3DD0DC11_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 630D12C5
			/// @DnDParent : 3DD0DC11
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 246ED1E2
			/// @DnDParent : 3DD0DC11
			/// @DnDArgument : "var" "global.selectionOpen"
			global.selectionOpen = 0;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 4F4BBD63
			/// @DnDParent : 3DD0DC11
			exit;}}}