/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74B29E20
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 506FBFB7
	/// @DnDParent : 74B29E20
	/// @DnDArgument : "var" "global.selectionOpen"
	if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A9001CF
		/// @DnDParent : 506FBFB7
		/// @DnDArgument : "var" "global.infoOpen"
		if(global.infoOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4DBAB7AB
			/// @DnDParent : 3A9001CF
			/// @DnDArgument : "var" "global.Talking"
			if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 36458EF1
				/// @DnDParent : 4DBAB7AB
				/// @DnDArgument : "var" "inventoryOpen"
				/// @DnDArgument : "value" "1"
				if(inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 27392CBA
					/// @DnDParent : 36458EF1
					/// @DnDArgument : "var" "global.combining"
					if(global.combining == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 01EA106B
						/// @DnDParent : 27392CBA
						/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
						/// @DnDArgument : "not" "1"
						/// @DnDArgument : "value" "itemNone"
						if(!(itemArray[itemSelected][itemType] == itemNone)){	/// @DnDAction : YoYo Games.Common.Set_Global
							/// @DnDVersion : 1
							/// @DnDHash : 797FE7BB
							/// @DnDParent : 01EA106B
							/// @DnDArgument : "value" "1"
							/// @DnDArgument : "var" "global.selectionOpen"
							global.selectionOpen = 1;
						
							/// @DnDAction : YoYo Games.Common.Set_Global
							/// @DnDVersion : 1
							/// @DnDHash : 094B48A3
							/// @DnDParent : 01EA106B
							/// @DnDArgument : "value" "20"
							/// @DnDArgument : "var" "global.recentlyInteracted"
							global.recentlyInteracted = 20;
						
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 2C6DB0F5
							/// @DnDParent : 01EA106B
							/// @DnDArgument : "xpos" "101 + rowPos * 280"
							/// @DnDArgument : "ypos" "101 + colPos * 301"
							/// @DnDArgument : "objectid" "TestInventoryDecisions"
							/// @DnDArgument : "layer" ""Instances_2""
							/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
							instance_create_layer(101 + rowPos * 280, 101 + colPos * 301, "Instances_2", TestInventoryDecisions);
						
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 2A5960AE
							/// @DnDParent : 01EA106B
							/// @DnDArgument : "var" "itemCombineSelect1"
							if(itemCombineSelect1 == 0){	/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 32618B2F
								/// @DnDInput : 2
								/// @DnDParent : 2A5960AE
								/// @DnDArgument : "expr" "itemArray[itemSelected][itemType]"
								/// @DnDArgument : "expr_1" "itemSelected"
								/// @DnDArgument : "var" "itemCombineType1"
								/// @DnDArgument : "var_1" "itemCombinePos1"
								itemCombineType1 = itemArray[itemSelected][itemType];
								itemCombinePos1 = itemSelected;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 73EB5526
								/// @DnDInput : 2
								/// @DnDParent : 2A5960AE
								/// @DnDArgument : "expr" "1"
								/// @DnDArgument : "expr_1" "1"
								/// @DnDArgument : "var" "itemCombineSelect1"
								/// @DnDArgument : "var_1" "itemCombineSelect2"
								itemCombineSelect1 = 1;
								itemCombineSelect2 = 1;
							
								/// @DnDAction : YoYo Games.Common.Temp_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 34F046AF
								/// @DnDInput : 2
								/// @DnDParent : 2A5960AE
								/// @DnDArgument : "var" "itemCombineRow"
								/// @DnDArgument : "value" "rowPos"
								/// @DnDArgument : "var_1" "itemCombineCol"
								/// @DnDArgument : "value_1" "colPos"
								var itemCombineRow = rowPos;
								var itemCombineCol = colPos;
							
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 14929B8B
								/// @DnDInput : 2
								/// @DnDParent : 2A5960AE
								/// @DnDArgument : "expr" "rowPos * 280"
								/// @DnDArgument : "expr_1" "colPos * 301"
								/// @DnDArgument : "var" "combiningItemX"
								/// @DnDArgument : "var_1" "combiningItemY"
								combiningItemX = rowPos * 280;
								combiningItemY = colPos * 301;
							
								/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
								/// @DnDVersion : 1
								/// @DnDHash : 0BEC1462
								/// @DnDInput : 4
								/// @DnDParent : 2A5960AE
								/// @DnDArgument : "msg" ""First item selected""
								/// @DnDArgument : "msg_1" "itemCombineType1"
								/// @DnDArgument : "msg_2" "combiningItemX"
								/// @DnDArgument : "msg_3" "combiningItemY"
								show_debug_message(string("First item selected") + @"
								" + string(itemCombineType1) + @"
								" + string(combiningItemX) + @"
								" + string(combiningItemY));}
						
							/// @DnDAction : YoYo Games.Common.Temp_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 1B10F176
							/// @DnDParent : 01EA106B
							/// @DnDArgument : "var" "_selected"
							/// @DnDArgument : "value" "itemArray[itemSelected][itemType]"
							var _selected = itemArray[itemSelected][itemType];
						
							/// @DnDAction : YoYo Games.Common.Apply_To
							/// @DnDVersion : 1
							/// @DnDHash : 7A43049A
							/// @DnDApplyTo : {TestInventoryDecisions}
							/// @DnDParent : 01EA106B
							with(TestInventoryDecisions) {
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 59AD2647
								/// @DnDApplyTo : {TestInventoryDecisions}
								/// @DnDParent : 7A43049A
								/// @DnDArgument : "expr" "_selected"
								/// @DnDArgument : "var" "itemSelectedType"
								with(TestInventoryDecisions) {
								itemSelectedType = _selected;
								
								}
							}}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 20E4AB68
					/// @DnDParent : 36458EF1
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0F5F6383
						/// @DnDParent : 20E4AB68
						/// @DnDArgument : "var" "itemCombineSelect2"
						/// @DnDArgument : "value" "1"
						if(itemCombineSelect2 == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 56C56228
							/// @DnDParent : 0F5F6383
							/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
							/// @DnDArgument : "not" "1"
							/// @DnDArgument : "value" "itemCombineType1"
							if(!(itemArray[itemSelected][itemType] == itemCombineType1)){	/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 1A6A39DF
								/// @DnDParent : 56C56228
								/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
								/// @DnDArgument : "not" "1"
								/// @DnDArgument : "value" "itemNone"
								if(!(itemArray[itemSelected][itemType] == itemNone)){	/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 34C9BAD0
									/// @DnDInput : 2
									/// @DnDParent : 1A6A39DF
									/// @DnDArgument : "expr" "itemArray[itemSelected][itemType]"
									/// @DnDArgument : "expr_1" "itemSelected"
									/// @DnDArgument : "var" "itemCombineType2"
									/// @DnDArgument : "var_1" "itemCombinePos2"
									itemCombineType2 = itemArray[itemSelected][itemType];
									itemCombinePos2 = itemSelected;
								
									/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
									/// @DnDVersion : 1
									/// @DnDHash : 67FC24B0
									/// @DnDInput : 2
									/// @DnDParent : 1A6A39DF
									/// @DnDArgument : "msg" ""Second item selected""
									/// @DnDArgument : "msg_1" "itemCombineType2"
									show_debug_message(string("Second item selected") + @"
									" + string(itemCombineType2));
								
									/// @DnDAction : YoYo Games.Common.If_Variable
									/// @DnDVersion : 1
									/// @DnDHash : 1B5CFEF5
									/// @DnDParent : 1A6A39DF
									/// @DnDArgument : "var" "itemCombineType1"
									/// @DnDArgument : "value" "1 ||  2"
									if(itemCombineType1 == 1 ||  2){	/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 13E1AA14
										/// @DnDParent : 1B5CFEF5
										/// @DnDArgument : "var" "itemCombineType2"
										/// @DnDArgument : "value" "1 || 2"
										if(itemCombineType2 == 1 || 2){	/// @DnDAction : YoYo Games.Common.Variable
											/// @DnDVersion : 1
											/// @DnDHash : 6E2F1010
											/// @DnDInput : 2
											/// @DnDParent : 13E1AA14
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
											/// @DnDHash : 06158F58
											/// @DnDParent : 13E1AA14
											/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemAmount]"
											/// @DnDArgument : "op" "3"
											if(itemArray[itemCombinePos1][itemAmount] <= 0){	/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 3D5BA0DA
												/// @DnDParent : 06158F58
												/// @DnDArgument : "expr" "itemNone"
												/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemType]"
												itemArray[itemCombinePos1][itemType] = itemNone;}
										
											/// @DnDAction : YoYo Games.Common.If_Variable
											/// @DnDVersion : 1
											/// @DnDHash : 6837B7C7
											/// @DnDParent : 13E1AA14
											/// @DnDArgument : "var" "itemArray[itemCombinePos2][itemAmount]"
											/// @DnDArgument : "op" "3"
											if(itemArray[itemCombinePos2][itemAmount] <= 0){	/// @DnDAction : YoYo Games.Common.Variable
												/// @DnDVersion : 1
												/// @DnDHash : 1D564801
												/// @DnDParent : 6837B7C7
												/// @DnDArgument : "expr" "itemNone"
												/// @DnDArgument : "var" "itemArray[itemCombinePos2][itemType]"
												itemArray[itemCombinePos2][itemType] = itemNone;}
										
											/// @DnDAction : YoYo Games.Common.Set_Global
											/// @DnDVersion : 1
											/// @DnDHash : 4EA0BCD8
											/// @DnDParent : 13E1AA14
											/// @DnDArgument : "var" "global.combining"
											global.combining = 0;
										
											/// @DnDAction : YoYo Games.Common.Variable
											/// @DnDVersion : 1
											/// @DnDHash : 0EA13B3F
											/// @DnDInput : 2
											/// @DnDParent : 13E1AA14
											/// @DnDArgument : "var" "itemCombineSelect1"
											/// @DnDArgument : "var_1" "itemCombineSelect2"
											itemCombineSelect1 = 0;
											itemCombineSelect2 = 0;
										
											/// @DnDAction : YoYo Games.Common.Temp_Variable
											/// @DnDVersion : 1
											/// @DnDHash : 7BE680AB
											/// @DnDInput : 4
											/// @DnDParent : 13E1AA14
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
										
											/// @DnDAction : YoYo Games.Common.Apply_To
											/// @DnDVersion : 1
											/// @DnDHash : 2B037DCD
											/// @DnDApplyTo : {TestPlayer}
											/// @DnDParent : 13E1AA14
											with(TestPlayer) {
												/// @DnDAction : YoYo Games.Loops.While_Loop
												/// @DnDVersion : 1
												/// @DnDHash : 274197D4
												/// @DnDParent : 2B037DCD
												/// @DnDArgument : "var" "_pos"
												/// @DnDArgument : "op" "1"
												/// @DnDArgument : "value" "9"
												while ((_pos < 9)) {
													/// @DnDAction : YoYo Games.Common.If_Variable
													/// @DnDVersion : 1
													/// @DnDHash : 4432959D
													/// @DnDParent : 274197D4
													/// @DnDArgument : "var" "itemArray[_pos][itemType]"
													/// @DnDArgument : "value" "_type"
													if(itemArray[_pos][itemType] == _type){	/// @DnDAction : YoYo Games.Loops.Break
														/// @DnDVersion : 1
														/// @DnDHash : 09EF78C3
														/// @DnDParent : 4432959D
														break;}
												
													/// @DnDAction : YoYo Games.Common.Else
													/// @DnDVersion : 1
													/// @DnDHash : 4A621609
													/// @DnDParent : 274197D4
													else{	/// @DnDAction : YoYo Games.Common.Variable
														/// @DnDVersion : 1
														/// @DnDHash : 35F87E14
														/// @DnDParent : 4A621609
														/// @DnDArgument : "expr" "1"
														/// @DnDArgument : "expr_relative" "1"
														/// @DnDArgument : "var" "_pos"
														_pos += 1;}
												}
											
												/// @DnDAction : YoYo Games.Common.If_Variable
												/// @DnDVersion : 1
												/// @DnDHash : 42D6BF14
												/// @DnDParent : 2B037DCD
												/// @DnDArgument : "var" "_pos"
												/// @DnDArgument : "op" "2"
												/// @DnDArgument : "value" "8"
												if(_pos > 8){	/// @DnDAction : YoYo Games.Common.Variable
													/// @DnDVersion : 1
													/// @DnDHash : 434A9A75
													/// @DnDParent : 42D6BF14
													/// @DnDArgument : "var" "_pos"
													_pos = 0;
												
													/// @DnDAction : YoYo Games.Loops.While_Loop
													/// @DnDVersion : 1
													/// @DnDHash : 3B2A4D07
													/// @DnDParent : 42D6BF14
													/// @DnDArgument : "var" "_pos"
													/// @DnDArgument : "op" "1"
													/// @DnDArgument : "value" "9"
													while ((_pos < 9)) {
														/// @DnDAction : YoYo Games.Common.If_Variable
														/// @DnDVersion : 1
														/// @DnDHash : 46276067
														/// @DnDParent : 3B2A4D07
														/// @DnDArgument : "var" "itemArray[_pos][itemType]"
														/// @DnDArgument : "value" "itemNone"
														if(itemArray[_pos][itemType] == itemNone){	/// @DnDAction : YoYo Games.Loops.Break
															/// @DnDVersion : 1
															/// @DnDHash : 37E6475C
															/// @DnDParent : 46276067
															break;}
													
														/// @DnDAction : YoYo Games.Common.Else
														/// @DnDVersion : 1
														/// @DnDHash : 02001645
														/// @DnDParent : 3B2A4D07
														else{	/// @DnDAction : YoYo Games.Common.Variable
															/// @DnDVersion : 1
															/// @DnDHash : 7509BA0B
															/// @DnDParent : 02001645
															/// @DnDArgument : "expr" "1"
															/// @DnDArgument : "expr_relative" "1"
															/// @DnDArgument : "var" "_pos"
															_pos += 1;}
													}}
											
												/// @DnDAction : YoYo Games.Common.If_Variable
												/// @DnDVersion : 1
												/// @DnDHash : 7BA496D8
												/// @DnDParent : 2B037DCD
												/// @DnDArgument : "var" "_pos"
												/// @DnDArgument : "op" "1"
												/// @DnDArgument : "value" "9"
												if(_pos < 9){	/// @DnDAction : YoYo Games.Common.Variable
													/// @DnDVersion : 1
													/// @DnDHash : 3E49F312
													/// @DnDInput : 4
													/// @DnDParent : 7BA496D8
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
													/// @DnDHash : 5A9402DC
													/// @DnDInput : 2
													/// @DnDParent : 7BA496D8
													/// @DnDArgument : "msg" ""Put item down""
													/// @DnDArgument : "msg_1" "_pos"
													show_debug_message(string("Put item down") + @"
													" + string(_pos));}
											}}}}}
						
							/// @DnDAction : YoYo Games.Common.Else
							/// @DnDVersion : 1
							/// @DnDHash : 0AD61913
							/// @DnDParent : 0F5F6383
							else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
								/// @DnDVersion : 1
								/// @DnDHash : 0CDB0505
								/// @DnDParent : 0AD61913
								/// @DnDArgument : "msg" ""Same item type""
								show_debug_message(string("Same item type"));}}}}}}}}