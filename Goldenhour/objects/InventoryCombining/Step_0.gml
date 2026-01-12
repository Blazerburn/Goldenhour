/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4B7AC5ED
/// @DnDInput : 4
/// @DnDArgument : "msg" ""Item combine type 1:""
/// @DnDArgument : "msg_1" "global.itemCombiningType1"
/// @DnDArgument : "msg_2" ""Item combine type 2:""
/// @DnDArgument : "msg_3" "global.itemCombiningType2"
show_debug_message(string("Item combine type 1:") + @"
" + string(global.itemCombiningType1) + @"
" + string("Item combine type 2:") + @"
" + string(global.itemCombiningType2));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A16BD62
/// @DnDArgument : "var" "global.combining"
/// @DnDArgument : "value" "1"
if(global.combining == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 305AE31C
	/// @DnDParent : 4A16BD62
	/// @DnDArgument : "var" "global.itemCombiningType1"
	/// @DnDArgument : "value" "1"
	if(global.itemCombiningType1 == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AD08616
		/// @DnDParent : 305AE31C
		/// @DnDArgument : "var" "global.itemCombiningType1"
		/// @DnDArgument : "value" "2"
		if(global.itemCombiningType1 == 2){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 25D3E69E
			/// @DnDInput : 2
			/// @DnDParent : 5AD08616
			/// @DnDArgument : "msg" ""Item combine type 1:""
			/// @DnDArgument : "msg_1" "global.itemCombiningType1"
			show_debug_message(string("Item combine type 1:") + @"
			" + string(global.itemCombiningType1));
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 143C2E5D
			/// @DnDParent : 5AD08616
			/// @DnDArgument : "var" "global.itemCombiningType2"
			/// @DnDArgument : "value" "1"
			if(global.itemCombiningType2 == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4090E345
				/// @DnDParent : 143C2E5D
				/// @DnDArgument : "var" "global.itemCombiningType2"
				/// @DnDArgument : "value" "2"
				if(global.itemCombiningType2 == 2){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
					/// @DnDVersion : 1
					/// @DnDHash : 4FF2B78C
					/// @DnDInput : 2
					/// @DnDParent : 4090E345
					/// @DnDArgument : "msg" ""Item combine type 2:""
					/// @DnDArgument : "msg_1" "global.itemCombiningType2"
					show_debug_message(string("Item combine type 2:") + @"
					" + string(global.itemCombiningType2));
				
					/// @DnDAction : YoYo Games.Common.Set_Global
					/// @DnDVersion : 1
					/// @DnDHash : 7C423F9D
					/// @DnDParent : 4090E345
					/// @DnDArgument : "var" "global.combining"
					global.combining = 0;
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 2D0F86F1
					/// @DnDApplyTo : {TestPlayer}
					/// @DnDParent : 4090E345
					with(TestPlayer) {
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 027B513D
						/// @DnDInput : 2
						/// @DnDParent : 2D0F86F1
						/// @DnDArgument : "expr" "-1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "expr_1" "-1"
						/// @DnDArgument : "expr_relative_1" "1"
						/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemAmount]"
						/// @DnDArgument : "var_1" "itemArray[itemCombinePos2][itemAmount]"
						itemArray[itemCombinePos1][itemAmount] += -1;
						itemArray[itemCombinePos2][itemAmount] += -1;
					
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 50F1E47F
						/// @DnDParent : 2D0F86F1
						/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemAmount]"
						/// @DnDArgument : "op" "3"
						if(itemArray[itemCombinePos1][itemAmount] <= 0){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5AF7300F
							/// @DnDParent : 50F1E47F
							/// @DnDArgument : "expr" "itemNone"
							/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemType]"
							itemArray[itemCombinePos1][itemType] = itemNone;}
					
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7863ADC7
						/// @DnDParent : 2D0F86F1
						/// @DnDArgument : "var" "itemArray[itemCombinePos2][itemAmount]"
						/// @DnDArgument : "op" "3"
						if(itemArray[itemCombinePos2][itemAmount] <= 0){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 407E01F3
							/// @DnDParent : 7863ADC7
							/// @DnDArgument : "expr" "itemNone"
							/// @DnDArgument : "var" "itemArray[itemCombinePos2][itemType]"
							itemArray[itemCombinePos2][itemType] = itemNone;}
					
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4D71901B
						/// @DnDInput : 4
						/// @DnDParent : 2D0F86F1
						/// @DnDArgument : "var" "_pos"
						/// @DnDArgument : "value" "0"
						/// @DnDArgument : "var_1" "_type"
						/// @DnDArgument : "value_1" "itemPlantBall"
						/// @DnDArgument : "var_2" "_sprite"
						/// @DnDArgument : "value_2" "CombinedInventory"
						/// @DnDArgument : "var_3" "_name"
						/// @DnDArgument : "value_3" ""Plant Ball""
						var _pos = 0;
						var _type = itemPlantBall;
						var _sprite = CombinedInventory;
						var _name = "Plant Ball";
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0354967C
						/// @DnDInput : 2
						/// @DnDParent : 2D0F86F1
						/// @DnDArgument : "var" "itemCombineSelect1"
						/// @DnDArgument : "var_1" "itemCombineSelect2"
						itemCombineSelect1 = 0;
						itemCombineSelect2 = 0;
					
						/// @DnDAction : YoYo Games.Loops.While_Loop
						/// @DnDVersion : 1
						/// @DnDHash : 60A64FBC
						/// @DnDParent : 2D0F86F1
						/// @DnDArgument : "var" "_pos"
						/// @DnDArgument : "op" "1"
						/// @DnDArgument : "value" "9"
						while ((_pos < 9)) {
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 0B88EB70
							/// @DnDParent : 60A64FBC
							/// @DnDArgument : "var" "itemArray[_pos][itemType]"
							/// @DnDArgument : "value" "_type"
							if(itemArray[_pos][itemType] == _type){	/// @DnDAction : YoYo Games.Loops.Break
								/// @DnDVersion : 1
								/// @DnDHash : 656B5E62
								/// @DnDParent : 0B88EB70
								break;}
						
							/// @DnDAction : YoYo Games.Common.Else
							/// @DnDVersion : 1
							/// @DnDHash : 39313B01
							/// @DnDParent : 60A64FBC
							else{	/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 3F9ABFBB
								/// @DnDParent : 39313B01
								/// @DnDArgument : "expr" "1"
								/// @DnDArgument : "expr_relative" "1"
								/// @DnDArgument : "var" "_pos"
								_pos += 1;}
						}
					
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 00D04B13
						/// @DnDParent : 2D0F86F1
						/// @DnDArgument : "var" "_pos"
						/// @DnDArgument : "op" "2"
						/// @DnDArgument : "value" "8"
						if(_pos > 8){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 2807BE67
							/// @DnDParent : 00D04B13
							/// @DnDArgument : "var" "_pos"
							_pos = 0;
						
							/// @DnDAction : YoYo Games.Loops.While_Loop
							/// @DnDVersion : 1
							/// @DnDHash : 36A0BDF4
							/// @DnDParent : 00D04B13
							/// @DnDArgument : "var" "_pos"
							/// @DnDArgument : "op" "1"
							/// @DnDArgument : "value" "9"
							while ((_pos < 9)) {
								/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 24A4DE69
								/// @DnDParent : 36A0BDF4
								/// @DnDArgument : "var" "itemArray[_pos][itemType]"
								/// @DnDArgument : "value" "itemNone"
								if(itemArray[_pos][itemType] == itemNone){	/// @DnDAction : YoYo Games.Loops.Break
									/// @DnDVersion : 1
									/// @DnDHash : 0AACBD81
									/// @DnDParent : 24A4DE69
									break;}
							
								/// @DnDAction : YoYo Games.Common.Else
								/// @DnDVersion : 1
								/// @DnDHash : 5B3FDE4C
								/// @DnDParent : 36A0BDF4
								else{	/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 1DB7139E
									/// @DnDParent : 5B3FDE4C
									/// @DnDArgument : "expr" "1"
									/// @DnDArgument : "expr_relative" "1"
									/// @DnDArgument : "var" "_pos"
									_pos += 1;}
							}}
					
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 23832082
						/// @DnDParent : 2D0F86F1
						/// @DnDArgument : "var" "_pos"
						/// @DnDArgument : "op" "1"
						/// @DnDArgument : "value" "9"
						if(_pos < 9){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 12A70A4D
							/// @DnDInput : 4
							/// @DnDParent : 23832082
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
							/// @DnDHash : 55311E40
							/// @DnDInput : 2
							/// @DnDParent : 23832082
							/// @DnDArgument : "msg" ""Put item down""
							/// @DnDArgument : "msg_1" "_pos"
							show_debug_message(string("Put item down") + @"
							" + string(_pos));}
					}
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 36589BAC
					/// @DnDParent : 4090E345
					instance_destroy();}}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6A245115
			/// @DnDParent : 5AD08616
			else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 4C21A8C1
				/// @DnDParent : 6A245115
				/// @DnDArgument : "msg" ""Wrong item""
				show_debug_message(string("Wrong item"));}}}}