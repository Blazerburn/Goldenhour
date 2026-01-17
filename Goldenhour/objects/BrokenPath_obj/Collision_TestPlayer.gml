/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5AEA5774
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F706B9F
	/// @DnDParent : 5AEA5774
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 597FBC4C
		/// @DnDParent : 0F706B9F
		/// @DnDArgument : "var" "global.inventoryOpen"
		if(global.inventoryOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 742FF297
			/// @DnDParent : 597FBC4C
			/// @DnDArgument : "var" "global.recentlyInteracted"
			if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5869E8C0
				/// @DnDParent : 742FF297
				/// @DnDArgument : "var" "objectInteracted"
				if(objectInteracted == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
					/// @DnDVersion : 1
					/// @DnDHash : 59F3BD94
					/// @DnDParent : 5869E8C0
					var l59F3BD94_0;l59F3BD94_0 = keyboard_check_pressed(vk_space);if (l59F3BD94_0){	/// @DnDAction : YoYo Games.Common.Set_Global
						/// @DnDVersion : 1
						/// @DnDHash : 0CF9C3D9
						/// @DnDParent : 59F3BD94
						/// @DnDArgument : "value" ".25 * room_speed"
						/// @DnDArgument : "value_relative" "1"
						/// @DnDArgument : "var" "global.recentlyInteracted"
						global.recentlyInteracted += .25 * room_speed;
					
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 398B84F2
						/// @DnDParent : 59F3BD94
						/// @DnDArgument : "objectid" "TestConvo"
						/// @DnDSaveInfo : "objectid" "TestConvo"
						instance_create_layer(0, 0, "Instances", TestConvo);
					
						/// @DnDAction : YoYo Games.Common.Apply_To
						/// @DnDVersion : 1
						/// @DnDHash : 1FBEDEBA
						/// @DnDApplyTo : {TestConvo}
						/// @DnDParent : 59F3BD94
						with(TestConvo) {
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 03860C9C
							/// @DnDInput : 2
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "expr" ""The path for the box seems to have been broken here""
							/// @DnDArgument : "expr_1" ""Maybe you could somehow fix it so you could move the box?""
							/// @DnDArgument : "var" "text[0]"
							/// @DnDArgument : "var_1" "text[1]"
							text[0] = "The path for the box seems to have been broken here";
							text[1] = "Maybe you could somehow fix it so you could move the box?";
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 370B7759
							/// @DnDInput : 7
							/// @DnDParent : 1FBEDEBA
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
							/// @DnDHash : 26E6ADDA
							/// @DnDInput : 2
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "var" "headshotTexts[0]"
							/// @DnDArgument : "var_1" "headshotTexts[1]"
							headshotTexts[0] = 0;
							headshotTexts[1] = 0;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 3E93D3C0
							/// @DnDInput : 2
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "var" "headshotHead[0]"
							/// @DnDArgument : "var_1" "headshotHead[1]"
							headshotHead[0] = 0;
							headshotHead[1] = 0;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 44EFE308
							/// @DnDInput : 2
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "expr" "1"
							/// @DnDArgument : "expr_1" "BrokenPathGrabDecision"
							/// @DnDArgument : "var" "decisionsTrue"
							/// @DnDArgument : "var_1" "decisions"
							decisionsTrue = 1;
							decisions = BrokenPathGrabDecision;
						}
					
						/// @DnDAction : YoYo Games.Common.Exit_Event
						/// @DnDVersion : 1
						/// @DnDHash : 35EDE5FF
						/// @DnDParent : 59F3BD94
						exit;}}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 10DEB117
				/// @DnDParent : 742FF297
				else{	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 13C1D00D
					/// @DnDParent : 10DEB117
					/// @DnDArgument : "var" "objectInteracted"
					/// @DnDArgument : "value" "1"
					if(objectInteracted == 1){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
						/// @DnDVersion : 1
						/// @DnDHash : 75F40B8B
						/// @DnDParent : 13C1D00D
						var l75F40B8B_0;l75F40B8B_0 = keyboard_check_pressed(vk_space);if (l75F40B8B_0){	/// @DnDAction : YoYo Games.Common.Set_Global
							/// @DnDVersion : 1
							/// @DnDHash : 13A064F8
							/// @DnDParent : 75F40B8B
							/// @DnDArgument : "value" ".25 * room_speed"
							/// @DnDArgument : "value_relative" "1"
							/// @DnDArgument : "var" "global.recentlyInteracted"
							global.recentlyInteracted += .25 * room_speed;
						
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 53FD0959
							/// @DnDParent : 75F40B8B
							/// @DnDArgument : "objectid" "TestConvo"
							/// @DnDSaveInfo : "objectid" "TestConvo"
							instance_create_layer(0, 0, "Instances", TestConvo);
						
							/// @DnDAction : YoYo Games.Common.Apply_To
							/// @DnDVersion : 1
							/// @DnDHash : 213547B4
							/// @DnDApplyTo : {TestConvo}
							/// @DnDParent : 75F40B8B
							with(TestConvo) {
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 3011E66F
								/// @DnDInput : 2
								/// @DnDParent : 213547B4
								/// @DnDArgument : "expr" ""An empty space where the broken path was""
								/// @DnDArgument : "expr_1" ""If you could maybe fix it then it would be fine to place down again""
								/// @DnDArgument : "var" "text[0]"
								/// @DnDArgument : "var_1" "text[1]"
								text[0] = "An empty space where the broken path was";
								text[1] = "If you could maybe fix it then it would be fine to place down again";
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 34E01A94
								/// @DnDInput : 7
								/// @DnDParent : 213547B4
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
								/// @DnDHash : 7DB20D6C
								/// @DnDInput : 2
								/// @DnDParent : 213547B4
								/// @DnDArgument : "var" "headshotTexts[0]"
								/// @DnDArgument : "var_1" "headshotTexts[1]"
								headshotTexts[0] = 0;
								headshotTexts[1] = 0;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 60A53577
								/// @DnDInput : 2
								/// @DnDParent : 213547B4
								/// @DnDArgument : "var" "headshotHead[0]"
								/// @DnDArgument : "var_1" "headshotHead[1]"
								headshotHead[0] = 0;
								headshotHead[1] = 0;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 4440314F
								/// @DnDInput : 2
								/// @DnDParent : 213547B4
								/// @DnDArgument : "expr" "1"
								/// @DnDArgument : "expr_1" "FixedPathUse"
								/// @DnDArgument : "var" "decisionsTrue"
								/// @DnDArgument : "var_1" "decisions"
								decisionsTrue = 1;
								decisions = FixedPathUse;
							}
						
							/// @DnDAction : YoYo Games.Common.Exit_Event
							/// @DnDVersion : 1
							/// @DnDHash : 0F34DD0E
							/// @DnDParent : 75F40B8B
							exit;}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 09DDCABB
					/// @DnDParent : 10DEB117
					else{	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
						/// @DnDVersion : 1
						/// @DnDHash : 209AEA4F
						/// @DnDParent : 09DDCABB
						var l209AEA4F_0;l209AEA4F_0 = keyboard_check_pressed(vk_space);if (l209AEA4F_0){	/// @DnDAction : YoYo Games.Common.Set_Global
							/// @DnDVersion : 1
							/// @DnDHash : 5841C519
							/// @DnDParent : 209AEA4F
							/// @DnDArgument : "value" ".25 * room_speed"
							/// @DnDArgument : "value_relative" "1"
							/// @DnDArgument : "var" "global.recentlyInteracted"
							global.recentlyInteracted += .25 * room_speed;
						
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 2E1CADAA
							/// @DnDParent : 209AEA4F
							/// @DnDArgument : "objectid" "TestConvo"
							/// @DnDSaveInfo : "objectid" "TestConvo"
							instance_create_layer(0, 0, "Instances", TestConvo);
						
							/// @DnDAction : YoYo Games.Common.Apply_To
							/// @DnDVersion : 1
							/// @DnDHash : 05ADD038
							/// @DnDApplyTo : {TestConvo}
							/// @DnDParent : 209AEA4F
							with(TestConvo) {
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 1713B9FC
								/// @DnDParent : 05ADD038
								/// @DnDArgument : "expr" ""It seems like you've fixed the path""
								/// @DnDArgument : "var" "text[0]"
								text[0] = "It seems like you've fixed the path";
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 1EFE206D
								/// @DnDInput : 7
								/// @DnDParent : 05ADD038
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
								textLast = 0;
								textWidth = 900;
								textX = 32;
								textY = 725;
								headshotTextWidth = 700;
								headshotTextX = 250;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 19D3067A
								/// @DnDParent : 05ADD038
								/// @DnDArgument : "var" "headshotTexts[0]"
								headshotTexts[0] = 0;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 5D0A202A
								/// @DnDParent : 05ADD038
								/// @DnDArgument : "var" "headshotHead[0]"
								headshotHead[0] = 0;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 4BEF02F5
								/// @DnDInput : 2
								/// @DnDParent : 05ADD038
								/// @DnDArgument : "expr_1" "FixedPathUse"
								/// @DnDArgument : "var" "decisionsTrue"
								/// @DnDArgument : "var_1" "decisions"
								decisionsTrue = 0;
								decisions = FixedPathUse;
							}
						
							/// @DnDAction : YoYo Games.Common.Exit_Event
							/// @DnDVersion : 1
							/// @DnDHash : 260D34A7
							/// @DnDParent : 209AEA4F
							exit;}}}}}}}