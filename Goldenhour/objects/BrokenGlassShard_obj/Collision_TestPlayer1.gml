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
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "expr" ""A small piece of broken glass from the moasic sits upon the floor""
							/// @DnDArgument : "var" "text[0]"
							text[0] = "A small piece of broken glass from the moasic sits upon the floor";
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 370B7759
							/// @DnDInput : 7
							/// @DnDParent : 1FBEDEBA
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
							/// @DnDHash : 26E6ADDA
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "var" "headshotTexts[0]"
							headshotTexts[0] = 0;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 3E93D3C0
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "var" "headshotHead[0]"
							headshotHead[0] = 0;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 44EFE308
							/// @DnDInput : 2
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "expr" "1"
							/// @DnDArgument : "expr_1" "BrokenGlassShardGrabDecision"
							/// @DnDArgument : "var" "decisionsTrue"
							/// @DnDArgument : "var_1" "decisions"
							decisionsTrue = 1;
							decisions = BrokenGlassShardGrabDecision;
						}
					
						/// @DnDAction : YoYo Games.Common.Exit_Event
						/// @DnDVersion : 1
						/// @DnDHash : 35EDE5FF
						/// @DnDParent : 59F3BD94
						exit;}}}}}}