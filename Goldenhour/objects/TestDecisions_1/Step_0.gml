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
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 34A897A0
			/// @DnDApplyTo : inst_C95EC19
			/// @DnDParent : 384D017A
			with(inst_C95EC19) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 74B37292
			/// @DnDApplyTo : inst_2FCBDD7F
			/// @DnDParent : 384D017A
			with(inst_2FCBDD7F) instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 170C85FE
			/// @DnDInput : 3
			/// @DnDParent : 384D017A
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "value" "0"
			/// @DnDArgument : "var_1" "_type"
			/// @DnDArgument : "value_1" "item"
			/// @DnDArgument : "var_2" "_sprite"
			/// @DnDArgument : "value_2" "sprite_index"
			var _pos = 0;
			var _type = item;
			var _sprite = sprite_index;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 051F169B
			/// @DnDApplyTo : {TestInventory}
			/// @DnDParent : 384D017A
			with(TestInventory) {
				/// @DnDAction : YoYo Games.Loops.While_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 783F3685
				/// @DnDParent : 051F169B
				/// @DnDArgument : "var" "_pos"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "9"
				while ((_pos < 9)) {
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 05D8DF2F
					/// @DnDParent : 783F3685
					/// @DnDArgument : "var" "itemArray[_pos][itemType]"
					/// @DnDArgument : "value" "_type"
					if(itemArray[_pos][itemType] == _type){	/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 6AC88D25
						/// @DnDParent : 05D8DF2F
						break;}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 6D90376D
					/// @DnDParent : 783F3685
					else{	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 406D3CB5
						/// @DnDParent : 6D90376D
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_pos"
						_pos += 1;}
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4AD3C9B9
				/// @DnDParent : 051F169B
				/// @DnDArgument : "var" "_pos"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "8"
				if(_pos > 8){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 63C67C32
					/// @DnDParent : 4AD3C9B9
					/// @DnDArgument : "var" "_pos"
					_pos = 0;
				
					/// @DnDAction : YoYo Games.Loops.While_Loop
					/// @DnDVersion : 1
					/// @DnDHash : 46D18147
					/// @DnDParent : 4AD3C9B9
					/// @DnDArgument : "var" "_pos"
					/// @DnDArgument : "op" "1"
					/// @DnDArgument : "value" "9"
					while ((_pos < 9)) {
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 490CCF98
						/// @DnDParent : 46D18147
						/// @DnDArgument : "var" "itemArray[_pos][itemType]"
						/// @DnDArgument : "value" "itemNone"
						if(itemArray[_pos][itemType] == itemNone){	/// @DnDAction : YoYo Games.Loops.Break
							/// @DnDVersion : 1
							/// @DnDHash : 1972DD9F
							/// @DnDParent : 490CCF98
							break;}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 42E113B1
						/// @DnDParent : 46D18147
						else{	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 223738B4
							/// @DnDParent : 42E113B1
							/// @DnDArgument : "expr" "1"
							/// @DnDArgument : "expr_relative" "1"
							/// @DnDArgument : "var" "_pos"
							_pos += 1;}
					}}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5A47E83F
				/// @DnDParent : 051F169B
				/// @DnDArgument : "var" "_pos"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "9"
				if(_pos < 9){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3A57DF22
					/// @DnDInput : 3
					/// @DnDParent : 5A47E83F
					/// @DnDArgument : "expr" "_type"
					/// @DnDArgument : "expr_1" "_sprite"
					/// @DnDArgument : "expr_2" "1"
					/// @DnDArgument : "expr_relative_2" "1"
					/// @DnDArgument : "var" "itemArray[_pos][itemType]"
					/// @DnDArgument : "var_1" "itemArray[_pos][itemSprite]"
					/// @DnDArgument : "var_2" "itemArray[_pos][itemAmount]"
					itemArray[_pos][itemType] = _type;
					itemArray[_pos][itemSprite] = _sprite;
					itemArray[_pos][itemAmount] += 1;
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 44091737
					/// @DnDApplyTo : other
					/// @DnDParent : 5A47E83F
					with(other) instance_destroy();}
			}
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 361F87AB
			/// @DnDParent : 384D017A
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "global.testObject"
			global.testObject = 1;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 07C0A67D
			/// @DnDInput : 2
			/// @DnDParent : 384D017A
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "global.Immobilize"
			/// @DnDArgument : "var_1" "global.Talking"
			global.Immobilize += 0;
			global.Talking = 0;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 38A6769C
			/// @DnDParent : 384D017A
			/// @DnDArgument : "value" ".25 * room_speed"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "global.recentlyInteracted"
			global.recentlyInteracted += .25 * room_speed;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 39702A0F
			/// @DnDParent : 384D017A
			exit;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BA26C90
		/// @DnDParent : 63AFF03A
		/// @DnDArgument : "var" "textSelected"
		/// @DnDArgument : "value" "1"
		if(textSelected == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78678C26
			/// @DnDParent : 5BA26C90
			instance_destroy();
		
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