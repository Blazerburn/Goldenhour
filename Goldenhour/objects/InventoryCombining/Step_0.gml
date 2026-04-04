show_debug_message(string("Item combine type 1:") + @"
" + string(global.itemCombiningType1) + @"
" + string("Item combine type 2:") + @"
" + string(global.itemCombiningType2));


if(global.combining == 1)
{
	/// Items that WORK
	/// Change the itemcombiningtypes, and what item it creates
	if ((global.itemCombiningType1 == "Strange Gel" || global.itemCombiningType1 == "Broken Path") && (global.itemCombiningType2 == "Strange Gel" || global.itemCombiningType2 == "Broken Path"))
	{
		show_debug_message("Right items")
		global.combining = 0;
	
	with(TestPlayer) {	
								
		remove_item(itemCombinePos1);
		remove_item(itemCombinePos2);
	
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
		remove_item(itemCombinePos1);
		remove_item(itemCombinePos2);
	
	
	
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
		remove_item(itemCombinePos1);
		remove_item(itemCombinePos2);
	
	
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
	
	/// Items that DON'T WORK
	
	if ((global.itemCombiningType1 == itemStrangeGel || global.itemCombiningType1 == itemFixedPath) && (global.itemCombiningType2 == itemStrangeGel || global.itemCombiningType2 == itemFixedPath))
	{
		show_debug_message("Wrong items")
	
	
		create_textevent(
		["It's uh... already stuck together", 
		"And it doesn't seem like it needs anymore"],
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
	
	if ((global.itemCombiningType1 == itemStrangeGel || global.itemCombiningType1 == itemStickyStick) && (global.itemCombiningType2 == itemStrangeGel || global.itemCombiningType2 == itemStickyStick))
	{
		show_debug_message("Wrong items")
	
	
		create_textevent(
		["It is already slathered in the gel", 
		"And it doesn't seem like it needs anymore"],
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
	
	if ((global.itemCombiningType1 == itemStrangeGel || global.itemCombiningType1 == itemMakeshiftAxe) && (global.itemCombiningType2 == itemStrangeGel || global.itemCombiningType2 == itemMakeshiftAxe))
	{
		show_debug_message("Wrong items")
	
	
		create_textevent(
		["It seems to already have enough of the gel on it to keep it together"],
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
	
		if ((global.itemCombiningType1 == itemStrangeGel || global.itemCombiningType1 == itemChiselRock) && (global.itemCombiningType2 == itemStrangeGel || global.itemCombiningType2 == itemChiselRock))
	{
		show_debug_message("Wrong items")
	
	
		create_textevent(
		["If you wanted to attach this to something, it might be better to cover that thing in gel, and then attach this"],
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
	
	if ((global.itemCombiningType1 == itemStrangeGel || global.itemCombiningType1 == itemSecretBook10thHour) && (global.itemCombiningType2 == itemStrangeGel || global.itemCombiningType2 == itemSecretBook10thHour))
	{
		show_debug_message("Wrong items")
	
	
		create_textevent(
		["You probably shouldn't stick the pages together", 
		"Although... that could be pretty funny if anyone found it",
		"...",
		"No you probably shouldn't do that"],
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
	
	if ((global.itemCombiningType1 == itemCrystallineHammer || global.itemCombiningType1 == itemBrokenGlassShard) && (global.itemCombiningType2 == itemCrystallineHammer || global.itemCombiningType2 == itemBrokenGlassShard))
	{
		show_debug_message("Wrong items")
	
	
		create_textevent(
		["You probably shouldn't break the glass unless you know you need to", 
		"It seems very... permanent"],
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
	
	
	else 
	{
		show_debug_message(string("Wrong item"))
		create_textevent(
		["You don't want to try that unless you have a reason to"],
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