/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 10D7B67C
/// @DnDArgument : "x" "1000"
/// @DnDArgument : "y" "1000"
/// @DnDArgument : "sprite" "InventoryInside"
/// @DnDArgument : "image" "itemPosIndex"
/// @DnDSaveInfo : "sprite" "InventoryInside"
draw_sprite(InventoryInside, itemPosIndex, 1000, 1000);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0B147E9C
/// @DnDArgument : "sprite" "InventoryStars1"
/// @DnDArgument : "image" "itemPosIndex"
/// @DnDSaveInfo : "sprite" "InventoryStars1"
draw_sprite(InventoryStars1, itemPosIndex, 0, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1E655F9C
/// @DnDArgument : "sprite" "InventorySquares"
/// @DnDSaveInfo : "sprite" "InventorySquares"
draw_sprite(InventorySquares, 0, 0, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2FCFA5B6
/// @DnDArgument : "sprite" "InventoryBorder"
/// @DnDSaveInfo : "sprite" "InventoryBorder"
draw_sprite(InventoryBorder, 0, 0, 0);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FA22EB3
/// @DnDInput : 4
/// @DnDArgument : "var" "inventoryItemX"
/// @DnDArgument : "value" "rowPos * 280"
/// @DnDArgument : "var_1" "inventoryItemY"
/// @DnDArgument : "value_1" "colPos * 301"
/// @DnDArgument : "var_2" "_xx"
/// @DnDArgument : "value_2" "201"
/// @DnDArgument : "var_3" "_yy"
/// @DnDArgument : "value_3" "186"
var inventoryItemX = rowPos * 280;
var inventoryItemY = colPos * 301;
var _xx = 201;
var _yy = 186;

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 54B3B192
/// @DnDArgument : "x" "101 + inventoryItemX"
/// @DnDArgument : "y" "101 + inventoryItemY"
/// @DnDArgument : "sprite" "InventorySelect_1"
/// @DnDArgument : "image" "inventorySelectAnimation"
/// @DnDSaveInfo : "sprite" "InventorySelect_1"
draw_sprite(InventorySelect_1, inventorySelectAnimation, 101 + inventoryItemX, 101 + inventoryItemY);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 352BBCF1
/// @DnDArgument : "y" "910"
/// @DnDArgument : "xscale" "4.95"
/// @DnDArgument : "yscale" ".45"
/// @DnDArgument : "sprite" "InventorySquare"
/// @DnDSaveInfo : "sprite" "InventorySquare"
draw_sprite_ext(InventorySquare, 0, 0, 910, 4.95, .45, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1978690C
/// @DnDArgument : "xscale" "4.95"
/// @DnDArgument : "yscale" ".45"
/// @DnDArgument : "sprite" "InventorySquare"
/// @DnDSaveInfo : "sprite" "InventorySquare"
draw_sprite_ext(InventorySquare, 0, 0, 0, 4.95, .45, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 365FF343
/// @DnDInput : 2
/// @DnDArgument : "expr" ".2"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "itemPosIndex"
/// @DnDArgument : "var_1" "inventorySelectAnimation"
itemPosIndex += .2;
inventorySelectAnimation += 1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 0666DB46
/// @DnDArgument : "msg" "inventorySelectAnimation"
show_debug_message(string(inventorySelectAnimation));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 546DAB5C
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < 9"
for(var i = 0; i < 9; i += 1) {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6285A85E
	/// @DnDParent : 546DAB5C
	/// @DnDArgument : "var" "itemArray[i, itemType]"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "itemNone"
	if(!(itemArray[i, itemType] == itemNone)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 35B6CBF2
		/// @DnDParent : 6285A85E
		/// @DnDArgument : "x" "_xx"
		/// @DnDArgument : "y" "_yy"
		/// @DnDArgument : "sprite" "itemArray[i, itemSprite]"
		/// @DnDArgument : "image" "inventoryItemAnimation"
		draw_sprite(itemArray[i, itemSprite], inventoryItemAnimation, _xx, _yy);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0E45C90C
		/// @DnDParent : 6285A85E
		/// @DnDArgument : "x" "_xx + 76"
		/// @DnDArgument : "y" "_yy + 56"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" "itemArray[i, itemAmount]"
		draw_text(_xx + 76, _yy + 56,  + string(itemArray[i, itemAmount]));}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24E7B6F0
	/// @DnDParent : 546DAB5C
	/// @DnDArgument : "expr" "280"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "_xx"
	_xx += 280;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59050F1E
	/// @DnDParent : 546DAB5C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "placedItem"
	placedItem += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09F6DCCB
	/// @DnDParent : 546DAB5C
	/// @DnDArgument : "var" "placedItem"
	/// @DnDArgument : "value" "3"
	if(placedItem == 3){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A4F57E9
		/// @DnDInput : 3
		/// @DnDParent : 09F6DCCB
		/// @DnDArgument : "expr" "301"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_2" "-840"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "_yy"
		/// @DnDArgument : "var_1" "placedItem"
		/// @DnDArgument : "var_2" "_xx"
		_yy += 301;
		placedItem = 0;
		_xx += -840;}

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3B004FCA
	/// @DnDInput : 2
	/// @DnDParent : 546DAB5C
	/// @DnDArgument : "msg" ""item:""
	/// @DnDArgument : "msg_1" "inventoryItemAnimation"
	show_debug_message(string("item:") + @"
	" + string(inventoryItemAnimation));}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 627210D3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "inventoryItemAnimation"
inventoryItemAnimation += 1;