/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6173FC91
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36AE7B6C
	/// @DnDParent : 6173FC91
	/// @DnDArgument : "var" "global.selectionOpen"
	if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F3006E6
		/// @DnDParent : 36AE7B6C
		/// @DnDArgument : "var" "global.infoOpen"
		if(global.infoOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 15ED1384
			/// @DnDParent : 0F3006E6
			/// @DnDArgument : "var" "global.Talking"
			if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5241769C
				/// @DnDParent : 15ED1384
				/// @DnDArgument : "var" "global.inventoryOpen"
				/// @DnDArgument : "value" "1"
				if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2132BAFD
					/// @DnDParent : 5241769C
					/// @DnDArgument : "var" "global.combining"
					if(global.combining == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 19A416FA
						/// @DnDParent : 2132BAFD
						/// @DnDArgument : "var" "global.usingItem"
						if(global.usingItem == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 388548C7
							/// @DnDParent : 19A416FA
							/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
							/// @DnDArgument : "not" "1"
							/// @DnDArgument : "value" "itemNone"
							if(!(itemArray[itemSelected][itemType] == itemNone)){	/// @DnDAction : YoYo Games.Common.Set_Global
								/// @DnDVersion : 1
								/// @DnDHash : 60837937
								/// @DnDParent : 388548C7
								/// @DnDArgument : "value" "1"
								/// @DnDArgument : "var" "global.selectionOpen"
								global.selectionOpen = 1;
							
								/// @DnDAction : YoYo Games.Common.Set_Global
								/// @DnDVersion : 1
								/// @DnDHash : 795087EA
								/// @DnDParent : 388548C7
								/// @DnDArgument : "value" "20"
								/// @DnDArgument : "var" "global.recentlyInteracted"
								global.recentlyInteracted = 20;
							
								/// @DnDAction : YoYo Games.Instances.Create_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 2E34761B
								/// @DnDDisabled : 1
								/// @DnDParent : 388548C7
								/// @DnDArgument : "xpos" "101 + rowPos * 280"
								/// @DnDArgument : "ypos" "101 + colPos * 301"
								/// @DnDArgument : "objectid" "TestInventoryDecisions"
								/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
							
							
								/// @DnDAction : YoYo Games.Common.Temp_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 6B855B4E
								/// @DnDParent : 388548C7
								/// @DnDArgument : "var" "_selected"
								/// @DnDArgument : "value" "itemArray[itemSelected][itemType]"
								var _selected = itemArray[itemSelected][itemType];
							
								/// @DnDAction : YoYo Games.Common.Execute_Code
								/// @DnDVersion : 1
								/// @DnDHash : 15EA7A31
								/// @DnDParent : 388548C7
								/// @DnDArgument : "code" "/// @description Execute Code$(13_10)  create_textevent($(13_10)    [ $(13_10)	["Combine", "Info", "Cancel"]$(13_10)    ],$(13_10)    -1,                                                          //mySpeakers$(13_10)    -1,   //myEffects$(13_10)    -1,                                                                                            //myTextSpeed$(13_10)    [1],                                                                   //myTypes$(13_10)    -1,                                                            //myNextLine$(13_10)    [[[combining, id], [item_info, _selected], [change_globalvariable, "selectionOpen", 0]]],                                                                                            //myScripts$(13_10)    -1,                                                                                            //myTextCol$(13_10)    -1,                                                                   //myEmotion$(13_10)    -1                                                                                             //myEmote$(13_10)    );$(13_10)	$(13_10)$(13_10)	$(13_10)$(13_10)"
								/// @description Execute Code
								  create_textevent(
								    [ 
									["Combine", "Info", "Cancel"]
								    ],
								    -1,                                                          //mySpeakers
								    -1,   //myEffects
								    -1,                                                                                            //myTextSpeed
								    [1],                                                                   //myTypes
								    -1,                                                            //myNextLine
								    [[[combining, id], [item_info, _selected], [change_globalvariable, "selectionOpen", 0]]],                                                                                            //myScripts
								    -1,                                                                                            //myTextCol
								    -1,                                                                   //myEmotion
								    -1                                                                                             //myEmote
								    );
							
								/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 663CE443
								/// @DnDParent : 388548C7
								/// @DnDArgument : "var" "itemCombineSelect1"
								if(itemCombineSelect1 == 0){	/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 5E8977F7
									/// @DnDInput : 2
									/// @DnDParent : 663CE443
									/// @DnDArgument : "expr" "itemArray[itemSelected][itemType]"
									/// @DnDArgument : "expr_1" "itemSelected"
									/// @DnDArgument : "var" "itemCombineType1"
									/// @DnDArgument : "var_1" "itemCombinePos1"
									itemCombineType1 = itemArray[itemSelected][itemType];
									itemCombinePos1 = itemSelected;
								
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 41451D61
									/// @DnDInput : 2
									/// @DnDParent : 663CE443
									/// @DnDArgument : "expr" "1"
									/// @DnDArgument : "expr_1" "1"
									/// @DnDArgument : "var" "itemCombineSelect1"
									/// @DnDArgument : "var_1" "itemCombineSelect2"
									itemCombineSelect1 = 1;
									itemCombineSelect2 = 1;
								
									/// @DnDAction : YoYo Games.Common.Temp_Variable
									/// @DnDVersion : 1
									/// @DnDHash : 3DA38592
									/// @DnDInput : 2
									/// @DnDParent : 663CE443
									/// @DnDArgument : "var" "itemCombineRow"
									/// @DnDArgument : "value" "rowPos"
									/// @DnDArgument : "var_1" "itemCombineCol"
									/// @DnDArgument : "value_1" "colPos"
									var itemCombineRow = rowPos;
									var itemCombineCol = colPos;
								
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 19CBFF00
									/// @DnDInput : 2
									/// @DnDParent : 663CE443
									/// @DnDArgument : "expr" "rowPos * 280"
									/// @DnDArgument : "expr_1" "colPos * 301"
									/// @DnDArgument : "var" "combiningItemX"
									/// @DnDArgument : "var_1" "combiningItemY"
									combiningItemX = rowPos * 280;
									combiningItemY = colPos * 301;
								
									/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
									/// @DnDVersion : 1
									/// @DnDHash : 6EB474E1
									/// @DnDInput : 4
									/// @DnDParent : 663CE443
									/// @DnDArgument : "msg" ""First item selected""
									/// @DnDArgument : "msg_1" "itemCombineType1"
									/// @DnDArgument : "msg_2" "combiningItemX"
									/// @DnDArgument : "msg_3" "combiningItemY"
									show_debug_message(string("First item selected") + @"
									" + string(itemCombineType1) + @"
									" + string(combiningItemX) + @"
									" + string(combiningItemY));}
							
								/// @DnDAction : YoYo Games.Common.Apply_To
								/// @DnDVersion : 1
								/// @DnDHash : 6998C44A
								/// @DnDApplyTo : {TestInventoryDecisions}
								/// @DnDParent : 388548C7
								with(TestInventoryDecisions) {
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 309EDCC1
									/// @DnDApplyTo : {TestInventoryDecisions}
									/// @DnDParent : 6998C44A
									/// @DnDArgument : "expr" "_selected"
									/// @DnDArgument : "var" "itemSelectedType"
									with(TestInventoryDecisions) {
									itemSelectedType = _selected;
									
									}
								}}}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 2F24C5DB
						/// @DnDParent : 2132BAFD
						else{	/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 60A7F150
							/// @DnDParent : 2F24C5DB
							/// @DnDArgument : "var" "global.usingItem"
							/// @DnDArgument : "value" "1"
							if(global.usingItem == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 6EF33BCD
								/// @DnDParent : 60A7F150
								/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
								/// @DnDArgument : "value" "itemNeeded"
								if(itemArray[itemSelected][itemType] == itemNeeded){	/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 272D5439
									/// @DnDParent : 6EF33BCD
									/// @DnDArgument : "expr" "-1"
									/// @DnDArgument : "expr_relative" "1"
									/// @DnDArgument : "var" "itemArray[itemSelected][itemUses]"
									itemArray[itemSelected][itemUses] += -1;
								
									/// @DnDAction : YoYo Games.Common.If_Variable
									/// @DnDVersion : 1
									/// @DnDHash : 2ABE986A
									/// @DnDParent : 6EF33BCD
									/// @DnDArgument : "var" "itemArray[itemSelected][itemUses]"
									/// @DnDArgument : "op" "3"
									if(itemArray[itemSelected][itemUses] <= 0){	/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 5AF039FA
										/// @DnDParent : 2ABE986A
										/// @DnDArgument : "expr" "-1"
										/// @DnDArgument : "expr_relative" "1"
										/// @DnDArgument : "var" "itemArray[itemSelected][itemAmount]"
										itemArray[itemSelected][itemAmount] += -1;}
								
									/// @DnDAction : YoYo Games.Common.If_Variable
									/// @DnDVersion : 1
									/// @DnDHash : 0BB4DD95
									/// @DnDParent : 6EF33BCD
									/// @DnDArgument : "var" "itemArray[itemSelected][itemAmount]"
									/// @DnDArgument : "op" "3"
									if(itemArray[itemSelected][itemAmount] <= 0){	/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 7AFD4A6C
										/// @DnDParent : 0BB4DD95
										/// @DnDArgument : "expr" "itemNone"
										/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemType]"
										itemArray[itemCombinePos1][itemType] = itemNone;}
								
									/// @DnDAction : YoYo Games.Common.Set_Global
									/// @DnDVersion : 1
									/// @DnDHash : 42589F49
									/// @DnDInput : 2
									/// @DnDParent : 6EF33BCD
									/// @DnDArgument : "value" "2"
									/// @DnDArgument : "var" "global.itemCheck"
									/// @DnDArgument : "var_1" "global.inventoryOpen"
									global.itemCheck = 2;
									global.inventoryOpen = 0;
								
									/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
									/// @DnDVersion : 1
									/// @DnDHash : 236AF765
									/// @DnDInput : 2
									/// @DnDParent : 6EF33BCD
									/// @DnDArgument : "msg" ""Used item""
									/// @DnDArgument : "msg_1" "global.itemCheck"
									show_debug_message(string("Used item") + @"
									" + string(global.itemCheck));}
							
								/// @DnDAction : YoYo Games.Common.Else
								/// @DnDVersion : 1
								/// @DnDHash : 1867861F
								/// @DnDParent : 60A7F150
								else{	/// @DnDAction : YoYo Games.Common.Set_Global
									/// @DnDVersion : 1
									/// @DnDHash : 3B9FB1A1
									/// @DnDParent : 1867861F
									/// @DnDArgument : "value" "itemArray[itemSelected][itemType]"
									/// @DnDArgument : "var" "itemWrongType"
									global.itemWrongType = itemArray[itemSelected][itemType];
								
									/// @DnDAction : YoYo Games.Common.Set_Global
									/// @DnDVersion : 1
									/// @DnDHash : 7698772E
									/// @DnDParent : 1867861F
									/// @DnDArgument : "value" "1"
									/// @DnDArgument : "var" "global.itemCheck"
									global.itemCheck = 1;
								
									/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
									/// @DnDVersion : 1
									/// @DnDHash : 4E019372
									/// @DnDParent : 1867861F
									/// @DnDArgument : "msg" ""Wrong item""
									show_debug_message(string("Wrong item"));}}}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 1F1C832B
					/// @DnDParent : 5241769C
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 780C3AC0
						/// @DnDParent : 1F1C832B
						/// @DnDArgument : "var" "global.Talking"
						if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 4B473A2D
							/// @DnDParent : 780C3AC0
							/// @DnDArgument : "var" "itemCombineSelect2"
							/// @DnDArgument : "value" "1"
							if(itemCombineSelect2 == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 6A22C0A7
								/// @DnDParent : 4B473A2D
								/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
								/// @DnDArgument : "not" "1"
								/// @DnDArgument : "value" "itemCombineType1"
								if(!(itemArray[itemSelected][itemType] == itemCombineType1)){	/// @DnDAction : YoYo Games.Common.If_Variable
									/// @DnDVersion : 1
									/// @DnDHash : 0334BC10
									/// @DnDParent : 6A22C0A7
									/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
									/// @DnDArgument : "not" "1"
									/// @DnDArgument : "value" "itemNone"
									if(!(itemArray[itemSelected][itemType] == itemNone)){	/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 00325DBB
										/// @DnDInput : 2
										/// @DnDParent : 0334BC10
										/// @DnDArgument : "expr" "itemArray[itemSelected][itemType]"
										/// @DnDArgument : "expr_1" "itemSelected"
										/// @DnDArgument : "var" "itemCombineType2"
										/// @DnDArgument : "var_1" "itemCombinePos2"
										itemCombineType2 = itemArray[itemSelected][itemType];
										itemCombinePos2 = itemSelected;
									
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 5F2BE39F
										/// @DnDInput : 2
										/// @DnDParent : 0334BC10
										/// @DnDArgument : "msg" ""Second item selected""
										/// @DnDArgument : "msg_1" "itemCombineType2"
										show_debug_message(string("Second item selected") + @"
										" + string(itemCombineType2));
									
										/// @DnDAction : YoYo Games.Instances.Create_Instance
										/// @DnDVersion : 1
										/// @DnDHash : 07939410
										/// @DnDParent : 0334BC10
										/// @DnDArgument : "objectid" "InventoryCombining"
										/// @DnDSaveInfo : "objectid" "InventoryCombining"
										instance_create_layer(0, 0, "Instances", InventoryCombining);
									
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 05739178
										/// @DnDInput : 4
										/// @DnDParent : 0334BC10
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
										/// @DnDHash : 00A860EC
										/// @DnDInput : 2
										/// @DnDParent : 0334BC10
										/// @DnDArgument : "value" "itemCombineType1"
										/// @DnDArgument : "value_1" "itemCombineType2"
										/// @DnDArgument : "var" "global.itemCombiningType1"
										/// @DnDArgument : "var_1" "global.itemCombiningType2"
										global.itemCombiningType1 = itemCombineType1;
										global.itemCombiningType2 = itemCombineType2;}}
							
								/// @DnDAction : YoYo Games.Common.Else
								/// @DnDVersion : 1
								/// @DnDHash : 588C9225
								/// @DnDParent : 4B473A2D
								else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
									/// @DnDVersion : 1
									/// @DnDHash : 2DF379E0
									/// @DnDParent : 588C9225
									/// @DnDArgument : "msg" ""Same item type""
									show_debug_message(string("Same item type"));}}}}}}}}}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 41257D21
/// @DnDArgument : "code" "//create_dialogue("Just a little monologue.", -1);"
//create_dialogue("Just a little monologue.", -1);