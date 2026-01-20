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
							/// @DnDInput : 7
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "expr" ""A large book with a clock on the front of it""
							/// @DnDArgument : "expr_1" ""The clock is currently on the 10th hour""
							/// @DnDArgument : "expr_2" ""There's no minute or second hand""
							/// @DnDArgument : "expr_3" ""...""
							/// @DnDArgument : "expr_4" ""You get a weird feeling from this book, like something in the back of your brain is telling you to take this book""
							/// @DnDArgument : "expr_5" ""...""
							/// @DnDArgument : "expr_6" ""You grab the book""
							/// @DnDArgument : "var" "text[0]"
							/// @DnDArgument : "var_1" "text[1]"
							/// @DnDArgument : "var_2" "text[2]"
							/// @DnDArgument : "var_3" "text[3]"
							/// @DnDArgument : "var_4" "text[4]"
							/// @DnDArgument : "var_5" "text[5]"
							/// @DnDArgument : "var_6" "text[6]"
							text[0] = "A large book with a clock on the front of it";
							text[1] = "The clock is currently on the 10th hour";
							text[2] = "There's no minute or second hand";
							text[3] = "...";
							text[4] = "You get a weird feeling from this book, like something in the back of your brain is telling you to take this book";
							text[5] = "...";
							text[6] = "You grab the book";
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 370B7759
							/// @DnDInput : 7
							/// @DnDParent : 1FBEDEBA
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
							/// @DnDHash : 26E6ADDA
							/// @DnDInput : 7
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "var" "headshotTexts[0]"
							/// @DnDArgument : "var_1" "headshotTexts[1]"
							/// @DnDArgument : "var_2" "headshotTexts[2]"
							/// @DnDArgument : "var_3" "headshotTexts[3]"
							/// @DnDArgument : "var_4" "headshotTexts[4]"
							/// @DnDArgument : "var_5" "headshotTexts[5]"
							/// @DnDArgument : "var_6" "headshotTexts[6]"
							headshotTexts[0] = 0;
							headshotTexts[1] = 0;
							headshotTexts[2] = 0;
							headshotTexts[3] = 0;
							headshotTexts[4] = 0;
							headshotTexts[5] = 0;
							headshotTexts[6] = 0;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 3E93D3C0
							/// @DnDInput : 7
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "var" "headshotHead[0]"
							/// @DnDArgument : "var_1" "headshotHead[1]"
							/// @DnDArgument : "var_2" "headshotHead[2]"
							/// @DnDArgument : "var_3" "headshotHead[3]"
							/// @DnDArgument : "var_4" "headshotHead[4]"
							/// @DnDArgument : "var_5" "headshotHead[5]"
							/// @DnDArgument : "var_6" "headshotHead[6]"
							headshotHead[0] = 0;
							headshotHead[1] = 0;
							headshotHead[2] = 0;
							headshotHead[3] = 0;
							headshotHead[4] = 0;
							headshotHead[5] = 0;
							headshotHead[6] = 0;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 44EFE308
							/// @DnDInput : 2
							/// @DnDParent : 1FBEDEBA
							/// @DnDArgument : "expr_1" "BioluminescentRockGrabDecision"
							/// @DnDArgument : "var" "decisionsTrue"
							/// @DnDArgument : "var_1" "decisions"
							decisionsTrue = 0;
							decisions = BioluminescentRockGrabDecision;
						}
					
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 30E1B7AA
						/// @DnDInput : 5
						/// @DnDParent : 59F3BD94
						/// @DnDArgument : "var" "_pos"
						/// @DnDArgument : "value" "0"
						/// @DnDArgument : "var_1" "_type"
						/// @DnDArgument : "value_1" "itemSecretBook10thHour"
						/// @DnDArgument : "var_2" "_sprite"
						/// @DnDArgument : "value_2" "SecretBook10thHour"
						/// @DnDArgument : "var_3" "_name"
						/// @DnDArgument : "value_3" ""Mysterious Book""
						/// @DnDArgument : "var_4" "_uses"
						/// @DnDArgument : "value_4" "1"
						var _pos = 0;
						var _type = itemSecretBook10thHour;
						var _sprite = SecretBook10thHour;
						var _name = "Mysterious Book";
						var _uses = 1;
					
						/// @DnDAction : YoYo Games.Common.Apply_To
						/// @DnDVersion : 1
						/// @DnDHash : 67A9FF68
						/// @DnDApplyTo : {TestPlayer1}
						/// @DnDParent : 59F3BD94
						with(TestPlayer1) {
							/// @DnDAction : YoYo Games.Loops.While_Loop
							/// @DnDVersion : 1
							/// @DnDHash : 1E9FDDE5
							/// @DnDParent : 67A9FF68
							/// @DnDArgument : "var" "_pos"
							/// @DnDArgument : "op" "1"
							/// @DnDArgument : "value" "9"
							while ((_pos < 9)) {
								/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 5D1C512D
								/// @DnDParent : 1E9FDDE5
								/// @DnDArgument : "var" "itemArray[_pos][itemType]"
								/// @DnDArgument : "value" "_type"
								if(itemArray[_pos][itemType] == _type){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
									/// @DnDVersion : 1
									/// @DnDHash : 201326B0
									/// @DnDInput : 2
									/// @DnDParent : 5D1C512D
									/// @DnDArgument : "msg" ""Same item at:""
									/// @DnDArgument : "msg_1" "_pos"
									show_debug_message(string("Same item at:") + @"
									" + string(_pos));
								
									/// @DnDAction : YoYo Games.Loops.Break
									/// @DnDVersion : 1
									/// @DnDHash : 41C56F53
									/// @DnDParent : 5D1C512D
									break;}
							
								/// @DnDAction : YoYo Games.Common.Else
								/// @DnDVersion : 1
								/// @DnDHash : 2DDA53A5
								/// @DnDParent : 1E9FDDE5
								else{	/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 689B64CF
									/// @DnDParent : 2DDA53A5
									/// @DnDArgument : "expr" "1"
									/// @DnDArgument : "expr_relative" "1"
									/// @DnDArgument : "var" "_pos"
									_pos += 1;}
							}
						
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5AFB770D
							/// @DnDParent : 67A9FF68
							/// @DnDArgument : "var" "_pos"
							/// @DnDArgument : "op" "2"
							/// @DnDArgument : "value" "8"
							if(_pos > 8){	/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 6635B8CA
								/// @DnDParent : 5AFB770D
								/// @DnDArgument : "var" "_pos"
								_pos = 0;
							
								/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
								/// @DnDVersion : 1
								/// @DnDHash : 20D1046C
								/// @DnDParent : 5AFB770D
								/// @DnDArgument : "msg" ""No same item""
								show_debug_message(string("No same item"));
							
								/// @DnDAction : YoYo Games.Loops.While_Loop
								/// @DnDVersion : 1
								/// @DnDHash : 4851C474
								/// @DnDParent : 5AFB770D
								/// @DnDArgument : "var" "_pos"
								/// @DnDArgument : "op" "1"
								/// @DnDArgument : "value" "9"
								while ((_pos < 9)) {
									/// @DnDAction : YoYo Games.Common.If_Variable
									/// @DnDVersion : 1
									/// @DnDHash : 68A3C9DC
									/// @DnDParent : 4851C474
									/// @DnDArgument : "var" "itemArray[_pos][itemType]"
									/// @DnDArgument : "value" "itemNone"
									if(itemArray[_pos][itemType] == itemNone){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 165AA9ED
										/// @DnDInput : 2
										/// @DnDParent : 68A3C9DC
										/// @DnDArgument : "msg" ""Open spot is:""
										/// @DnDArgument : "msg_1" "_pos"
										show_debug_message(string("Open spot is:") + @"
										" + string(_pos));
									
										/// @DnDAction : YoYo Games.Loops.Break
										/// @DnDVersion : 1
										/// @DnDHash : 5705DE11
										/// @DnDParent : 68A3C9DC
										break;}
								
									/// @DnDAction : YoYo Games.Common.Else
									/// @DnDVersion : 1
									/// @DnDHash : 530113C6
									/// @DnDParent : 4851C474
									else{	/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 7DC22D28
										/// @DnDParent : 530113C6
										/// @DnDArgument : "expr" "1"
										/// @DnDArgument : "expr_relative" "1"
										/// @DnDArgument : "var" "_pos"
										_pos += 1;}
								}}
						
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 515DA1C7
							/// @DnDParent : 67A9FF68
							/// @DnDArgument : "var" "_pos"
							/// @DnDArgument : "op" "1"
							/// @DnDArgument : "value" "9"
							if(_pos < 9){	/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 4A5B0497
								/// @DnDInput : 5
								/// @DnDParent : 515DA1C7
								/// @DnDArgument : "expr" "_type"
								/// @DnDArgument : "expr_1" "_sprite"
								/// @DnDArgument : "expr_2" "1"
								/// @DnDArgument : "expr_relative_2" "1"
								/// @DnDArgument : "expr_3" "_name"
								/// @DnDArgument : "expr_4" "_uses"
								/// @DnDArgument : "var" "itemArray[_pos][itemType]"
								/// @DnDArgument : "var_1" "itemArray[_pos][itemSprite]"
								/// @DnDArgument : "var_2" "itemArray[_pos][itemAmount]"
								/// @DnDArgument : "var_3" "itemArray[_pos][itemName]"
								/// @DnDArgument : "var_4" "itemArray[_pos][itemUses]"
								itemArray[_pos][itemType] = _type;
								itemArray[_pos][itemSprite] = _sprite;
								itemArray[_pos][itemAmount] += 1;
								itemArray[_pos][itemName] = _name;
								itemArray[_pos][itemUses] = _uses;
							
								/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
								/// @DnDVersion : 1
								/// @DnDHash : 3762B013
								/// @DnDInput : 4
								/// @DnDParent : 515DA1C7
								/// @DnDArgument : "msg" ""Put item down""
								/// @DnDArgument : "msg_1" ""_pos:""
								/// @DnDArgument : "msg_2" "_pos"
								/// @DnDArgument : "msg_3" "itemArray"
								show_debug_message(string("Put item down") + @"
								" + string("_pos:") + @"
								" + string(_pos) + @"
								" + string(itemArray));}
						}}}}}}}