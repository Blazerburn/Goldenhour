show_debug_message(string("Item combine type 1:") + @"
" + string(global.itemCombiningType1) + @"
" + string("Item combine type 2:") + @"
" + string(global.itemCombiningType2));

if(global.combining == 1)
{
	/// Change the itemcombiningtypes, and what item it creates
	if ((global.itemCombiningType1 == "Strange Gel" || global.itemCombiningType1 == "Broken Path") && (global.itemCombiningType2 == "Strange Gel" || global.itemCombiningType2 == "Broken Path"))
	{
		show_debug_message("Right items")
		global.combining = 0;
	
	with(TestPlayer) {
		itemArray[itemCombinePos1][itemUses] += -1;
		itemArray[itemCombinePos2][itemUses] += -1;
	
	/*	if((itemArray[itemCombinePos1][itemAmount] <= 0) || (itemArray[itemCombinePos1][itemUses] <= 0))
	{
		//itemArray[itemCombinePos1][itemType] = itemNone;
		//itemArray[itemCombinePos1][itemAmount] = 0;
		//itemArray[itemCombinePos1][itemUses] = 0;
	}
	
		if((itemArray[itemCombinePos2][itemAmount] <= 0) || (itemArray[itemCombinePos2][itemUses] <= 0))
	{
		itemArray[itemCombinePos2][itemType] = itemNone;
		itemArray[itemCombinePos2][itemAmount] = 0;
		itemArray[itemCombinePos1][itemUses] = 0;
	}*/
	
	itemCombineSelect1 = 0;
	itemCombineSelect2 = 0;
	itemCombinePos1 = 0;
	itemCombinePos2 = 0;
	itemCombineType1 = 0;
	itemCombineType2 = 0;
	
	add_item(0, "Fixed Path", FixedPath, "Fixed Path", 1);
	
	
		create_textevent(
		["You stick the strange gel to the sides of the broken pieces and try to stick them back together", 
		"It takes a bit, but you eventually get all the pieces where you think they belong", 
		"You got a Fixed Path!"],
		-1,
		-1,
		-1,
		-1,
		-1,
		-1,
		[[14, c_yellow, 26, c_white], [-1], [-1]],
		-1,
		-1,
	);
	}
	
	instance_destroy();
	}
	
		else if ((global.itemCombiningType1 == "Long Stick" || global.itemCombiningType1 == "Strange Gel") && (global.itemCombiningType2 == "Strange Gel" || global.itemCombiningType2 == "Long Stick"))
	{
		show_debug_message("Right items")
		global.combining = 0;
	
	with(TestPlayer) {
		itemArray[itemCombinePos1][itemUses] += -1;
		itemArray[itemCombinePos2][itemUses] += -1;
	
	
	
	itemCombineSelect1 = 0;
	itemCombineSelect2 = 0;
	itemCombinePos1 = 0;
	itemCombinePos2 = 0;
	itemCombineType1 = 0;
	itemCombineType2 = 0;
	
	add_item(0, "Sticky Stick", StickyStick, "Sticky Stick", 1);
	
	
		create_textevent(
		["You cover tip of the stick in the sticky strange gel", 
		"You got a Sticky Stick!"],
		-1,
		-1,
		-1,
		-1,
		-1,
		-1,
		[[34, c_yellow, 53, c_white], [-1]],
		-1,
		-1,
	);
	}
	
	instance_destroy();
	}
	
			else if ((global.itemCombiningType1 == "Sticky Stick" || global.itemCombiningType1 == "Chisel Rock") && (global.itemCombiningType2 == "Chisel Rock" || global.itemCombiningType2 == "Sticky Stick"))
	{
		show_debug_message("Right items")
		global.combining = 0;
	
	with(TestPlayer) {
		itemArray[itemCombinePos1][itemUses] += -1;
		itemArray[itemCombinePos2][itemUses] += -1;
	
	
	itemCombineSelect1 = 0;
	itemCombineSelect2 = 0;
	itemCombinePos1 = 0;
	itemCombinePos2 = 0;
	itemCombineType1 = 0;
	itemCombineType2 = 0;
	
	add_item(0, "Makeshift Axe", MakeshiftAxe, "Makeshift Axe", 1);
	
	
		create_textevent(
		["You stick the chisel rock against the gel on the stick", 
		"You hold it against the end for a bit of time",
		"The rock sticks to it very quickly",
		"You got a Makeshift Axe!"],
		-1,
		-1,
		-1,
		-1,
		-1,
		-1,
		[[38, c_yellow, 42, c_white], [-1], [-1], [-1]],
		-1,
		-1,
	);
	}
	
	instance_destroy();
	}
	
	else 
	{
		show_debug_message(string("Wrong item"))
		create_textevent(
		["That doesn't work"],
		-1,
		-1,
		-1,
		-1,
		-1,
		-1,
		-1,
		-1,
		-1,
	);
	
	instance_destroy();
	}
}