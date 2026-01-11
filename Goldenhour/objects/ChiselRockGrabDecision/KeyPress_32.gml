/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D74D883
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73E529C7
	/// @DnDParent : 4D74D883
	/// @DnDArgument : "var" "textSelected"
	if(textSelected == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 795A79F2
		/// @DnDParent : 73E529C7
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0161D493
		/// @DnDInput : 4
		/// @DnDParent : 73E529C7
		/// @DnDArgument : "var" "_pos"
		/// @DnDArgument : "value" "0"
		/// @DnDArgument : "var_1" "_type"
		/// @DnDArgument : "value_1" "itemChiselRock"
		/// @DnDArgument : "var_2" "_sprite"
		/// @DnDArgument : "value_2" "ChiselRock"
		/// @DnDArgument : "var_3" "_name"
		/// @DnDArgument : "value_3" ""Chiseled Rock""
		var _pos = 0;
		var _type = itemChiselRock;
		var _sprite = ChiselRock;
		var _name = "Chiseled Rock";
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 61D28B8D
		/// @DnDApplyTo : {TestPlayer}
		/// @DnDParent : 73E529C7
		with(TestPlayer) {
			/// @DnDAction : YoYo Games.Loops.While_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 6E37E88F
			/// @DnDParent : 61D28B8D
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "9"
			while ((_pos < 9)) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5E3A4FDC
				/// @DnDParent : 6E37E88F
				/// @DnDArgument : "var" "itemArray[_pos][itemType]"
				/// @DnDArgument : "value" "_type"
				if(itemArray[_pos][itemType] == _type){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
					/// @DnDVersion : 1
					/// @DnDHash : 4BD73271
					/// @DnDInput : 2
					/// @DnDParent : 5E3A4FDC
					/// @DnDArgument : "msg" ""Same item at:""
					/// @DnDArgument : "msg_1" "_pos"
					show_debug_message(string("Same item at:") + @"
					" + string(_pos));
				
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 71E30327
					/// @DnDParent : 5E3A4FDC
					break;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 3346F06C
				/// @DnDParent : 6E37E88F
				else{	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0FEEA96C
					/// @DnDParent : 3346F06C
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_pos"
					_pos += 1;}
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12FFEDAA
			/// @DnDParent : 61D28B8D
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "8"
			if(_pos > 8){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1D107E76
				/// @DnDParent : 12FFEDAA
				/// @DnDArgument : "var" "_pos"
				_pos = 0;
			
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 73B78EAD
				/// @DnDParent : 12FFEDAA
				/// @DnDArgument : "msg" ""No same item""
				show_debug_message(string("No same item"));
			
				/// @DnDAction : YoYo Games.Loops.While_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 64F6BA4E
				/// @DnDParent : 12FFEDAA
				/// @DnDArgument : "var" "_pos"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "9"
				while ((_pos < 9)) {
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 431C2723
					/// @DnDParent : 64F6BA4E
					/// @DnDArgument : "var" "itemArray[_pos][itemType]"
					/// @DnDArgument : "value" "itemNone"
					if(itemArray[_pos][itemType] == itemNone){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 581EFEBB
						/// @DnDInput : 2
						/// @DnDParent : 431C2723
						/// @DnDArgument : "msg" ""Open spot is:""
						/// @DnDArgument : "msg_1" "_pos"
						show_debug_message(string("Open spot is:") + @"
						" + string(_pos));
					
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 15276128
						/// @DnDParent : 431C2723
						break;}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 2A6E48C7
					/// @DnDParent : 64F6BA4E
					else{	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 03213E04
						/// @DnDParent : 2A6E48C7
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_pos"
						_pos += 1;}
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 52452B24
			/// @DnDParent : 61D28B8D
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "9"
			if(_pos < 9){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 453D6463
				/// @DnDInput : 4
				/// @DnDParent : 52452B24
				/// @DnDArgument : "expr" "_type"
				/// @DnDArgument : "expr_1" "_sprite"
				/// @DnDArgument : "expr_2" "1"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "expr_3" "_name"
				/// @DnDArgument : "var" "itemArray[_pos][itemType]"
				/// @DnDArgument : "var_1" "itemArray[_pos][itemSprite]"
				/// @DnDArgument : "var_2" "itemArray[_pos][itemAmount]"
				/// @DnDArgument : "var_3" "itemArray[_pos][itemName]"
				itemArray[_pos][itemType] = _type;
				itemArray[_pos][itemSprite] = _sprite;
				itemArray[_pos][itemAmount] += 1;
				itemArray[_pos][itemName] = _name;
			
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 3E8D2F6B
				/// @DnDInput : 4
				/// @DnDParent : 52452B24
				/// @DnDArgument : "msg" ""Put item down""
				/// @DnDArgument : "msg_1" ""_pos:""
				/// @DnDArgument : "msg_2" "_pos"
				/// @DnDArgument : "msg_3" "itemArray"
				show_debug_message(string("Put item down") + @"
				" + string("_pos:") + @"
				" + string(_pos) + @"
				" + string(itemArray));}
		}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 4BD31F2F
		/// @DnDParent : 73E529C7
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.testObject"
		global.testObject = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5F6C0C8D
		/// @DnDInput : 2
		/// @DnDParent : 73E529C7
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0F1735C1
		/// @DnDParent : 73E529C7
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 5C03014D
		/// @DnDParent : 73E529C7
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B6B65C6
	/// @DnDParent : 4D74D883
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "1"
	if(textSelected == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7397AA51
		/// @DnDParent : 5B6B65C6
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 52B53344
		/// @DnDInput : 2
		/// @DnDParent : 5B6B65C6
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3B83A51D
		/// @DnDParent : 5B6B65C6
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 545ED3CF
		/// @DnDParent : 5B6B65C6
		exit;}}