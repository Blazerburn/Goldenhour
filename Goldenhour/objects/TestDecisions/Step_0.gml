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
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 63AFF03A
	/// @DnDParent : 74C1E59C
	var l63AFF03A_0;l63AFF03A_0 = keyboard_check_pressed(vk_space);if (l63AFF03A_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 384D017A
		/// @DnDParent : 63AFF03A
		/// @DnDArgument : "var" "textSelected"
		if(textSelected == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7A53DBF6
			/// @DnDParent : 384D017A
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2D0F042B
			/// @DnDParent : 384D017A
			/// @DnDArgument : "objectid" "TestConvo"
			/// @DnDSaveInfo : "objectid" "TestConvo"
			instance_create_layer(0, 0, "Instances", TestConvo);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 72FD930E
			/// @DnDApplyTo : {TestConvo}
			/// @DnDParent : 384D017A
			with(TestConvo) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4CEFB1A4
				/// @DnDInput : 6
				/// @DnDParent : 72FD930E
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
				/// @DnDHash : 46DB55E3
				/// @DnDInput : 7
				/// @DnDParent : 72FD930E
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
				/// @DnDHash : 6C5C3685
				/// @DnDInput : 6
				/// @DnDParent : 72FD930E
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
				/// @DnDHash : 20399868
				/// @DnDInput : 6
				/// @DnDParent : 72FD930E
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
				/// @DnDHash : 1A2F706A
				/// @DnDInput : 2
				/// @DnDParent : 72FD930E
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_1" "TestDecisions"
				/// @DnDArgument : "var" "decisionsTrue"
				/// @DnDArgument : "var_1" "decisions"
				decisionsTrue = 1;
				decisions = TestDecisions;
			}
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 39702A0F
			/// @DnDParent : 384D017A
			exit;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28393AB3
		/// @DnDParent : 63AFF03A
		/// @DnDArgument : "var" "textSelected"
		/// @DnDArgument : "value" "1"
		if(textSelected == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6CCE417E
			/// @DnDParent : 28393AB3
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 08442F3D
			/// @DnDParent : 28393AB3
			/// @DnDArgument : "objectid" "TestConvo"
			/// @DnDSaveInfo : "objectid" "TestConvo"
			instance_create_layer(0, 0, "Instances", TestConvo);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 30C99954
			/// @DnDApplyTo : {TestConvo}
			/// @DnDParent : 28393AB3
			with(TestConvo) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 603BE107
				/// @DnDInput : 7
				/// @DnDParent : 30C99954
				/// @DnDArgument : "expr" ""Hey!""
				/// @DnDArgument : "expr_1" ""Could you please work?""
				/// @DnDArgument : "expr_2" ""...""
				/// @DnDArgument : "expr_3" ""...""
				/// @DnDArgument : "expr_4" ""Nothing happens""
				/// @DnDArgument : "expr_5" ""Fuck""
				/// @DnDArgument : "expr_6" ""Yeah I think it's just broken...""
				/// @DnDArgument : "var" "text[0]"
				/// @DnDArgument : "var_1" "text[1]"
				/// @DnDArgument : "var_2" "text[2]"
				/// @DnDArgument : "var_3" "text[3]"
				/// @DnDArgument : "var_4" "text[4]"
				/// @DnDArgument : "var_5" "text[5]"
				/// @DnDArgument : "var_6" "text[6]"
				text[0] = "Hey!";
				text[1] = "Could you please work?";
				text[2] = "...";
				text[3] = "...";
				text[4] = "Nothing happens";
				text[5] = "Fuck";
				text[6] = "Yeah I think it's just broken...";
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 24CA3EB5
				/// @DnDInput : 7
				/// @DnDParent : 30C99954
				/// @DnDArgument : "expr_1" "6"
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
				textLast = 6;
				textWidth = 900;
				textX = 32;
				textY = 725;
				headshotTextWidth = 700;
				headshotTextX = 250;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5D371306
				/// @DnDInput : 7
				/// @DnDParent : 30C99954
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_1" "1"
				/// @DnDArgument : "expr_3" "1"
				/// @DnDArgument : "expr_5" "1"
				/// @DnDArgument : "expr_6" "1"
				/// @DnDArgument : "var" "headshotTexts[0]"
				/// @DnDArgument : "var_1" "headshotTexts[1]"
				/// @DnDArgument : "var_2" "headshotTexts[2]"
				/// @DnDArgument : "var_3" "headshotTexts[3]"
				/// @DnDArgument : "var_4" "headshotTexts[4]"
				/// @DnDArgument : "var_5" "headshotTexts[5]"
				/// @DnDArgument : "var_6" "headshotTexts[6]"
				headshotTexts[0] = 1;
				headshotTexts[1] = 1;
				headshotTexts[2] = 0;
				headshotTexts[3] = 1;
				headshotTexts[4] = 0;
				headshotTexts[5] = 1;
				headshotTexts[6] = 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5FE964DC
				/// @DnDInput : 7
				/// @DnDParent : 30C99954
				/// @DnDArgument : "expr" "4"
				/// @DnDArgument : "expr_1" "1"
				/// @DnDArgument : "expr_3" "1"
				/// @DnDArgument : "expr_5" "7"
				/// @DnDArgument : "expr_6" "106"
				/// @DnDArgument : "var" "headshotHead[0]"
				/// @DnDArgument : "var_1" "headshotHead[1]"
				/// @DnDArgument : "var_2" "headshotHead[2]"
				/// @DnDArgument : "var_3" "headshotHead[3]"
				/// @DnDArgument : "var_4" "headshotHead[4]"
				/// @DnDArgument : "var_5" "headshotHead[5]"
				/// @DnDArgument : "var_6" "headshotHead[6]"
				headshotHead[0] = 4;
				headshotHead[1] = 1;
				headshotHead[2] = 0;
				headshotHead[3] = 1;
				headshotHead[4] = 0;
				headshotHead[5] = 7;
				headshotHead[6] = 106;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5C6D07CC
				/// @DnDInput : 2
				/// @DnDParent : 30C99954
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_1" "TestDecisions"
				/// @DnDArgument : "var" "decisionsTrue"
				/// @DnDArgument : "var_1" "decisions"
				decisionsTrue = 1;
				decisions = TestDecisions;
			}
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 4DA11185
			/// @DnDParent : 28393AB3
			exit;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BA26C90
		/// @DnDParent : 63AFF03A
		/// @DnDArgument : "var" "textSelected"
		/// @DnDArgument : "value" "2"
		if(textSelected == 2){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78678C26
			/// @DnDParent : 5BA26C90
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Change_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5E8B17A6
			/// @DnDApplyTo : {TestInteractableTrue}
			/// @DnDParent : 5BA26C90
			/// @DnDArgument : "objind" "TestInteractable"
			/// @DnDSaveInfo : "objind" "TestInteractable"
			with(TestInteractableTrue) instance_change(TestInteractable, true);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 7BD2FE31
			/// @DnDInput : 2
			/// @DnDParent : 5BA26C90
			/// @DnDArgument : "var" "global.Immobilize"
			/// @DnDArgument : "var_1" "global.Talking"
			global.Immobilize = 0;
			global.Talking = 0;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 0BAC8FE3
			/// @DnDParent : 5BA26C90
			/// @DnDArgument : "value" ".25 * room_speed"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "global.recentlyInteracted"
			global.recentlyInteracted += .25 * room_speed;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 57A4C32A
			/// @DnDParent : 5BA26C90
			exit;}}}