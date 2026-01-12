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
				/// @DnDArgument : "var" "global.inventoryOpen"
				/// @DnDArgument : "value" "1"
				if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 27392CBA
					/// @DnDParent : 36458EF1
					/// @DnDArgument : "var" "global.combining"
					if(global.combining == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7751C54D
						/// @DnDParent : 27392CBA
						/// @DnDArgument : "var" "global.usingItem"
						if(global.usingItem == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 01EA106B
							/// @DnDParent : 7751C54D
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
						/// @DnDHash : 0644E750
						/// @DnDParent : 27392CBA
						else{	/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 033D13E2
							/// @DnDParent : 0644E750
							/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
							/// @DnDArgument : "value" "itemNeeded"
							if(itemArray[itemSelected][itemType] == itemNeeded){	/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 5AC76A64
								/// @DnDParent : 033D13E2
								/// @DnDArgument : "expr" "-1"
								/// @DnDArgument : "expr_relative" "1"
								/// @DnDArgument : "var" "itemArray[itemSelected][itemAmount]"
								itemArray[itemSelected][itemAmount] += -1;
							
								/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 39224490
								/// @DnDParent : 033D13E2
								/// @DnDArgument : "var" "itemArray[itemSelected][itemAmount]"
								/// @DnDArgument : "op" "3"
								if(itemArray[itemSelected][itemAmount] <= 0){	/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 793CE042
									/// @DnDParent : 39224490
									/// @DnDArgument : "expr" "itemNone"
									/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemType]"
									itemArray[itemCombinePos1][itemType] = itemNone;}
							
								/// @DnDAction : YoYo Games.Common.Set_Global
								/// @DnDVersion : 1
								/// @DnDHash : 0C335C23
								/// @DnDInput : 2
								/// @DnDParent : 033D13E2
								/// @DnDArgument : "value" "2"
								/// @DnDArgument : "var" "global.itemCheck"
								/// @DnDArgument : "var_1" "global.inventoryOpen"
								global.itemCheck = 2;
								global.inventoryOpen = 0;
							
								/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
								/// @DnDVersion : 1
								/// @DnDHash : 6B78EFC6
								/// @DnDInput : 2
								/// @DnDParent : 033D13E2
								/// @DnDArgument : "msg" ""Used item""
								/// @DnDArgument : "msg_1" "global.itemCheck"
								show_debug_message(string("Used item") + @"
								" + string(global.itemCheck));}
						
							/// @DnDAction : YoYo Games.Common.Else
							/// @DnDVersion : 1
							/// @DnDHash : 02249302
							/// @DnDParent : 0644E750
							else{	/// @DnDAction : YoYo Games.Common.Set_Global
								/// @DnDVersion : 1
								/// @DnDHash : 652D31A9
								/// @DnDParent : 02249302
								/// @DnDArgument : "value" "itemArray[itemSelected][itemType]"
								/// @DnDArgument : "var" "itemWrongType"
								global.itemWrongType = itemArray[itemSelected][itemType];
							
								/// @DnDAction : YoYo Games.Common.Set_Global
								/// @DnDVersion : 1
								/// @DnDHash : 0EC0D286
								/// @DnDParent : 02249302
								/// @DnDArgument : "value" "1"
								/// @DnDArgument : "var" "global.itemCheck"
								global.itemCheck = 1;
							
								/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
								/// @DnDVersion : 1
								/// @DnDHash : 2821D4DF
								/// @DnDParent : 02249302
								/// @DnDArgument : "msg" ""Wrong item""
								show_debug_message(string("Wrong item"));}}}
				
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
								
									/// @DnDAction : YoYo Games.Instances.Create_Instance
									/// @DnDVersion : 1
									/// @DnDHash : 4C48F31C
									/// @DnDParent : 1A6A39DF
									/// @DnDArgument : "objectid" "InventoryCombining"
									/// @DnDSaveInfo : "objectid" "InventoryCombining"
									instance_create_layer(0, 0, "Instances", InventoryCombining);
								
									/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
									/// @DnDVersion : 1
									/// @DnDHash : 5C446935
									/// @DnDInput : 4
									/// @DnDParent : 1A6A39DF
									/// @DnDArgument : "msg" ""Item combine 1:""
									/// @DnDArgument : "msg_1" "itemCombineType1"
									/// @DnDArgument : "msg_2" ""Item combine 2:""
									/// @DnDArgument : "msg_3" "itemCombineType2"
									show_debug_message(string("Item combine 1:") + @"
									" + string(itemCombineType1) + @"
									" + string("Item combine 2:") + @"
									" + string(itemCombineType2));
								
									/// @DnDAction : YoYo Games.Common.Set_Global
									/// @DnDVersion : 1
									/// @DnDHash : 56F344C6
									/// @DnDInput : 2
									/// @DnDParent : 1A6A39DF
									/// @DnDArgument : "value" "itemCombineType1"
									/// @DnDArgument : "value_1" "itemCombineType2"
									/// @DnDArgument : "var" "global.itemCombiningType1"
									/// @DnDArgument : "var_1" "global.itemCombiningType2"
									global.itemCombiningType1 = itemCombineType1;
									global.itemCombiningType2 = itemCombineType2;}}
						
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