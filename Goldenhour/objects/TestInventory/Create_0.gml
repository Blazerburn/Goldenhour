/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18B25C32
/// @DnDInput : 8
/// @DnDArgument : "var" "itemPos"
/// @DnDArgument : "var_1" "itemPosIndex"
/// @DnDArgument : "var_2" "rowPos"
/// @DnDArgument : "var_3" "colPos"
/// @DnDArgument : "var_4" "itemSelected"
/// @DnDArgument : "var_5" "placedItem"
/// @DnDArgument : "var_6" "inventorySelectAnimation"
/// @DnDArgument : "var_7" "inventoryItemAnimation"
itemPos = 0;
itemPosIndex = 0;
rowPos = 0;
colPos = 0;
itemSelected = 0;
placedItem = 0;
inventorySelectAnimation = 0;
inventoryItemAnimation = 0;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 1CAB03E8
/// @DnDArgument : "init" "_pos = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_pos < 9"
/// @DnDArgument : "expr" "_pos += 1"
for(var _pos = 0; _pos < 9; _pos += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DF53FFB
	/// @DnDInput : 3
	/// @DnDParent : 1CAB03E8
	/// @DnDArgument : "expr" "itemNone"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "itemArray[_pos][itemType]"
	/// @DnDArgument : "var_1" "itemArray[_pos][itemSprite]"
	/// @DnDArgument : "var_2" "itemArray[_pos][itemAmount]"
	itemArray[_pos][itemType] = itemNone;
	itemArray[_pos][itemSprite] = -1;
	itemArray[_pos][itemAmount] = 0;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3AB173AA
	/// @DnDInput : 2
	/// @DnDParent : 1CAB03E8
	/// @DnDArgument : "msg" "itemArray"
	/// @DnDArgument : "msg_1" "sprite_index"
	show_debug_message(string(itemArray) + @"
	" + string(sprite_index));}