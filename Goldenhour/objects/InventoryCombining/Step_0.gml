show_debug_message(string("Item combine type 1:") + @"
" + string(global.itemCombiningType1) + @"
" + string("Item combine type 2:") + @"
" + string(global.itemCombiningType2));

if(global.combining == 1)
{
	/// Change the itemcombiningtypes, and what item it creates
	if ((global.itemCombiningType1 == 1 || global.itemCombiningType1 == 2) && (global.itemCombiningType2 == 1 || global.itemCombiningType2 == 2))
	{
		show_debug_message("Right items")
		global.combining = 0;
	
	with(TestPlayer) {
		itemArray[itemCombinePos1][itemUses] += -1;
		itemArray[itemCombinePos2][itemUses] += -1;
	
		if((itemArray[itemCombinePos1][itemAmount] <= 0) || (itemArray[itemCombinePos1][itemUses] <= 0))
	{
		itemArray[itemCombinePos1][itemType] = itemNone;
		itemArray[itemCombinePos1][itemAmount] = 0;
		itemArray[itemCombinePos1][itemUses] = 0;
	}
	
		if((itemArray[itemCombinePos2][itemAmount] <= 0) || (itemArray[itemCombinePos2][itemUses] <= 0))
	{
		itemArray[itemCombinePos2][itemType] = itemNone;
		itemArray[itemCombinePos2][itemAmount] = 0;
		itemArray[itemCombinePos1][itemUses] = 0;
	}
	
	
		var _pos = 0;
		var _type = itemPlantBall;
		var _sprite = CombinedInventory;
		var _name = "Plant Ball";
		var _uses = 1;
	
		itemCombineSelect1 = 0;
		itemCombineSelect2 = 0;
	
		while ((_pos < 9)) {
			if(itemArray[_pos][itemType] == _type)
	{
		break;
	}
		
			else
	{
		_pos += 1;
	}
		}
	
		if(_pos > 8)
	{
		_pos = 0;
		
			while ((_pos < 9)) {
				if(itemArray[_pos][itemType] == itemNone)
	{
		break;
	}
			
				else
	{
		_pos += 1;
	}
			}
	}
	
		if(_pos < 9)
	{
		itemArray[_pos][itemType] = _type;
			itemArray[_pos][itemSprite] = _sprite;
			itemArray[_pos][itemAmount] += 1;
			itemArray[_pos][itemName] = _name;
			itemArray[_pos][itemUses] = _uses;
		
			show_debug_message(string("Put item down") + @"
			" + string(_pos));
	}
	instance_create_layer(0, 0, "Instances", TestConvo);
	
	with(TestConvo) {
		text[0] = "You... uh...";
		text[1] = "Stick the plant into the top of the ball..?";
		text[2] = "How... how did you even?";
		text[3] = "You... You got a Plant Ball... I guess...";
	
		textCurrent = 0;
		textLast = 3;
		textWidth = 900;
		textX = 32;
		textY = 725;
		headshotTextWidth = 700;
		headshotTextX = 250;
	
		headshotTexts[0] = 0;
		headshotTexts[1] = 0;
		headshotTexts[2] = 0;
		headshotTexts[3] = 0;
	
		headshotHead[0] = 0;
		headshotHead[1] = 0;
		headshotHead[2] = 0;
		headshotHead[3] = 0;
	
		decisionsTrue = 0;
		decisions = TestDecisions;
	}
	}
	
	instance_destroy();
	}
	else if ((global.itemCombiningType1 == "Strange Gel" || global.itemCombiningType1 == "Broken Path") && (global.itemCombiningType2 == "Strange Gel" || global.itemCombiningType2 == "Broken Path"))
	{
		show_debug_message("Right items")
		global.combining = 0;
	
	with(TestPlayer) {
		itemArray[itemCombinePos1][itemUses] += -1;
		itemArray[itemCombinePos2][itemUses] += -1;
	
		if((itemArray[itemCombinePos1][itemAmount] <= 0) || (itemArray[itemCombinePos1][itemUses] <= 0))
	{
		itemArray[itemCombinePos1][itemType] = itemNone;
		itemArray[itemCombinePos1][itemAmount] = 0;
		itemArray[itemCombinePos1][itemUses] = 0;
	}
	
		if((itemArray[itemCombinePos2][itemAmount] <= 0) || (itemArray[itemCombinePos2][itemUses] <= 0))
	{
		itemArray[itemCombinePos2][itemType] = itemNone;
		itemArray[itemCombinePos2][itemAmount] = 0;
		itemArray[itemCombinePos1][itemUses] = 0;
	}
	
	
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
		-1,
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
	
		if((itemArray[itemCombinePos1][itemAmount] <= 0) || (itemArray[itemCombinePos1][itemUses] <= 0))
	{
		itemArray[itemCombinePos1][itemType] = itemNone;
		itemArray[itemCombinePos1][itemAmount] = 0;
		itemArray[itemCombinePos1][itemUses] = 0;
	}
	
		if((itemArray[itemCombinePos2][itemAmount] <= 0) || (itemArray[itemCombinePos2][itemUses] <= 0))
	{
		itemArray[itemCombinePos2][itemType] = itemNone;
		itemArray[itemCombinePos2][itemAmount] = 0;
		itemArray[itemCombinePos1][itemUses] = 0;
	}
	
	
	add_item(0, "Sticky Stick", StickyStick, "Sticky Stick", 1);
	
	
		create_textevent(
		["You cover the stick in the sticky strange gel", 
		"You got a Sticky Stick!"],
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
	
		if((itemArray[itemCombinePos1][itemAmount] <= 0) || (itemArray[itemCombinePos1][itemUses] <= 0))
	{
		itemArray[itemCombinePos1][itemType] = itemNone;
		itemArray[itemCombinePos1][itemAmount] = 0;
		itemArray[itemCombinePos1][itemUses] = 0;
	}
	
		if((itemArray[itemCombinePos2][itemAmount] <= 0) || (itemArray[itemCombinePos2][itemUses] <= 0))
	{
		itemArray[itemCombinePos2][itemType] = itemNone;
		itemArray[itemCombinePos2][itemAmount] = 0;
		itemArray[itemCombinePos1][itemUses] = 0;
	}
	
	
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
		-1,
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