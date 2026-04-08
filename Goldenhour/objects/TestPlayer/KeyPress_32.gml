if(global.recentlyInteracted == 0)
{
	if(global.selectionOpen == 0)
{
	if(global.infoOpen == 0)
{
	if(global.Talking == 0)
{
	if(global.inventoryOpen == 1)
{
	if(global.combining == 0)
{
	if(global.usingItem == 0)
{
	if(!(itemArray[itemSelected][itemType] == itemNone))
{
	global.selectionOpen = 1;
							
								global.recentlyInteracted = 20;
							
								itemSelection_x = 101 + rowPos * 280;
								itemSelection_y = 101 + colPos * 301;
							
								// instance_create_layer(101 + rowPos * 280, 101 + colPos * 301, "Instances", TestInventoryDecisions);
							
								var _selected = itemArray[itemSelected][itemType];
							
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
							
								if(itemCombineSelect1 == 0)
{
	itemCombineType1 = itemArray[itemSelected][itemType];
									itemCombinePos1 = itemSelected;
								
									itemCombineSelect1 = 1;
									itemCombineSelect2 = 1;
								
									var itemCombineRow = rowPos;
									var itemCombineCol = colPos;
								
									combiningItemX = rowPos * 280;
									combiningItemY = colPos * 301;
								
									show_debug_message(string("First item selected") + @"
									" + string(itemCombineType1) + @"
									" + string(combiningItemX) + @"
									" + string(combiningItemY));
}
}
}
					
						else
{
	if(global.usingItem == 1)
{
	if(itemArray[itemSelected][itemType] == itemNeeded)
{
	itemArray[itemSelected][itemUses] += -1;
								
									if(itemArray[itemSelected][itemUses] <= 0)
{
	itemArray[itemSelected][itemAmount] += -1;
	show_debug_message("No uses")
}
								
									if(itemArray[itemSelected][itemAmount] <= 0)
{
	itemArray[itemSelected][itemType] = itemNone;
	show_debug_message("No amount")
}
								
									global.itemCheck = 2;
									global.inventoryOpen = 0;
								
									show_debug_message(string("Used item") + @"
									" + string(global.itemCheck));
}
							
								else
{
	global.itemWrongType = itemArray[itemSelected][itemType];
								
									global.itemCheck = 1;
								
									show_debug_message(string("Wrong item"));
}
}
}
}
				
					else
{
	if(global.Talking == 0)
{
	if(itemCombineSelect2 == 1)
{
	if(!(itemArray[itemSelected][itemType] == itemCombineType1))
{
	if(!(itemArray[itemSelected][itemType] == itemNone))
{
	itemCombineType2 = itemArray[itemSelected][itemType];
										itemCombinePos2 = itemSelected;
									
										show_debug_message(string("Second item selected") + @"
										" + string(itemCombineType2));
									
										instance_create_layer(0, 0, "Instances", InventoryCombining);
									
										show_debug_message(string("Item combine 1:") + @"
										" + string(itemCombineType1) + @"
										" + string("Item combine 2:") + @"
										" + string(itemCombineType2));
									
										global.itemCombiningType1 = itemCombineType1;
										global.itemCombiningType2 = itemCombineType2;
										
										
}
}
							
								else
{
	show_debug_message(string("Same item type"));
}
}
}
}
}
}
}
}
}

//create_dialogue("Just a little monologue.", -1);