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
if(global.combining == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4A887D3D
	/// @DnDParent : 4A16BD62
	/// @DnDArgument : "code" "/// Change the itemcombiningtypes, and what item it creates$(13_10)if ((global.itemCombiningType1 == 1 || global.itemCombiningType1 == 2) && (global.itemCombiningType2 == 1 || global.itemCombiningType2 == 2))$(13_10){$(13_10)	show_debug_message("Right items")$(13_10)	global.combining = 0;$(13_10)$(13_10)with(TestPlayer) {$(13_10)	itemArray[itemCombinePos1][itemAmount] += -1;$(13_10)	itemArray[itemCombinePos2][itemAmount] += -1;$(13_10)$(13_10)	if(itemArray[itemCombinePos1][itemAmount] <= 0)$(13_10){$(13_10)	itemArray[itemCombinePos1][itemType] = itemNone;$(13_10)}$(13_10)$(13_10)	if(itemArray[itemCombinePos2][itemAmount] <= 0)$(13_10){$(13_10)	itemArray[itemCombinePos2][itemType] = itemNone;$(13_10)}$(13_10)$(13_10)	var _pos = 0;$(13_10)	var _type = itemPlantBall;$(13_10)	var _sprite = CombinedInventory;$(13_10)	var _name = "Plant Ball";$(13_10)$(13_10)	itemCombineSelect1 = 0;$(13_10)	itemCombineSelect2 = 0;$(13_10)$(13_10)	while ((_pos < 9)) {$(13_10)		if(itemArray[_pos][itemType] == _type)$(13_10){$(13_10)	break;$(13_10)}$(13_10)	$(13_10)		else$(13_10){$(13_10)	_pos += 1;$(13_10)}$(13_10)	}$(13_10)$(13_10)	if(_pos > 8)$(13_10){$(13_10)	_pos = 0;$(13_10)	$(13_10)		while ((_pos < 9)) {$(13_10)			if(itemArray[_pos][itemType] == itemNone)$(13_10){$(13_10)	break;$(13_10)}$(13_10)		$(13_10)			else$(13_10){$(13_10)	_pos += 1;$(13_10)}$(13_10)		}$(13_10)}$(13_10)$(13_10)	if(_pos < 9)$(13_10){$(13_10)	itemArray[_pos][itemType] = _type;$(13_10)		itemArray[_pos][itemSprite] = _sprite;$(13_10)		itemArray[_pos][itemAmount] += 1;$(13_10)		itemArray[_pos][itemName] = _name;$(13_10)	$(13_10)		show_debug_message(string("Put item down") + @"$(13_10)		" + string(_pos));$(13_10)}$(13_10)instance_create_layer(0, 0, "Instances", TestConvo);$(13_10)$(13_10)with(TestConvo) {$(13_10)	text[0] = "You... uh...";$(13_10)	text[1] = "Stick the plant into the top of the ball..?";$(13_10)	text[2] = "How... how did you even?";$(13_10)	text[3] = "You... You got a Plant Ball... I guess...";$(13_10)$(13_10)	textCurrent = 0;$(13_10)	textLast = 3;$(13_10)	textWidth = 900;$(13_10)	textX = 32;$(13_10)	textY = 725;$(13_10)	headshotTextWidth = 700;$(13_10)	headshotTextX = 250;$(13_10)$(13_10)	headshotTexts[0] = 0;$(13_10)	headshotTexts[1] = 0;$(13_10)	headshotTexts[2] = 0;$(13_10)	headshotTexts[3] = 0;$(13_10)$(13_10)	headshotHead[0] = 0;$(13_10)	headshotHead[1] = 0;$(13_10)	headshotHead[2] = 0;$(13_10)	headshotHead[3] = 0;$(13_10)$(13_10)	decisionsTrue = 0;$(13_10)	decisions = TestDecisions;$(13_10)}$(13_10)}$(13_10)$(13_10)instance_destroy();$(13_10)}$(13_10)else $(13_10){$(13_10)	show_debug_message(string("Wrong item"))$(13_10)	instance_create_layer(0, 0, "Instances", TestConvo);$(13_10)$(13_10)with(TestConvo) {$(13_10)	text[0] = "That doesn't work";$(13_10)$(13_10)	textCurrent = 0;$(13_10)	textLast = 0;$(13_10)	textWidth = 900;$(13_10)	textX = 32;$(13_10)	textY = 725;$(13_10)	headshotTextWidth = 700;$(13_10)	headshotTextX = 250;$(13_10)$(13_10)	headshotTexts[0] = 0;$(13_10)$(13_10)	headshotHead[0] = 0;$(13_10)$(13_10)	decisionsTrue = 0;$(13_10)	decisions = TestDecisions;$(13_10)}$(13_10)$(13_10)instance_destroy();$(13_10)}"
	/// Change the itemcombiningtypes, and what item it creates
	if ((global.itemCombiningType1 == 1 || global.itemCombiningType1 == 2) && (global.itemCombiningType2 == 1 || global.itemCombiningType2 == 2))
	{
		show_debug_message("Right items")
		global.combining = 0;
	
	with(TestPlayer) {
		itemArray[itemCombinePos1][itemAmount] += -1;
		itemArray[itemCombinePos2][itemAmount] += -1;
	
		if(itemArray[itemCombinePos1][itemAmount] <= 0)
	{
		itemArray[itemCombinePos1][itemType] = itemNone;
	}
	
		if(itemArray[itemCombinePos2][itemAmount] <= 0)
	{
		itemArray[itemCombinePos2][itemType] = itemNone;
	}
	
		var _pos = 0;
		var _type = itemPlantBall;
		var _sprite = CombinedInventory;
		var _name = "Plant Ball";
	
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
	else 
	{
		show_debug_message(string("Wrong item"))
		instance_create_layer(0, 0, "Instances", TestConvo);
	
	with(TestConvo) {
		text[0] = "That doesn't work";
	
		textCurrent = 0;
		textLast = 0;
		textWidth = 900;
		textX = 32;
		textY = 725;
		headshotTextWidth = 700;
		headshotTextX = 250;
	
		headshotTexts[0] = 0;
	
		headshotHead[0] = 0;
	
		decisionsTrue = 0;
		decisions = TestDecisions;
	}
	
	instance_destroy();
	}}