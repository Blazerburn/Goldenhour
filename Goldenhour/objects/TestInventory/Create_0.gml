/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18B25C32
/// @DnDInput : 6
/// @DnDArgument : "var" "itemPos"
/// @DnDArgument : "var_1" "itemPosIndex"
/// @DnDArgument : "var_2" "rowPos"
/// @DnDArgument : "var_3" "colPos"
/// @DnDArgument : "var_4" "itemSelected"
/// @DnDArgument : "var_5" "placedItem"
itemPos = 0;
itemPosIndex = 0;
rowPos = 0;
colPos = 0;
itemSelected = 0;
placedItem = 0;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6AA35659
/// @DnDInput : 10
/// @DnDArgument : "var" "itemArray"
/// @DnDArgument : "function" "array_create"
/// @DnDArgument : "arg" "9"
/// @DnDArgument : "arg_1" "[]"
/// @DnDArgument : "arg_2" "[]"
/// @DnDArgument : "arg_3" "[]"
/// @DnDArgument : "arg_4" "[]"
/// @DnDArgument : "arg_5" "[]"
/// @DnDArgument : "arg_6" "[]"
/// @DnDArgument : "arg_7" "[]"
/// @DnDArgument : "arg_8" "[]"
/// @DnDArgument : "arg_9" "[]"
itemArray = array_create(9, [], [], [], [], [], [], [], [], []);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 1CAB03E8
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < 9"
for(var i = 0; i < 9; i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DF53FFB
	/// @DnDInput : 3
	/// @DnDParent : 1CAB03E8
	/// @DnDArgument : "expr" "itemNone"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "itemArray[i][itemType]"
	/// @DnDArgument : "var_1" "itemArray[i][itemSprite]"
	/// @DnDArgument : "var_2" "itemArray[i][itemAmount]"
	itemArray[i][itemType] = itemNone;
	itemArray[i][itemSprite] = -1;
	itemArray[i][itemAmount] = 0;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3AB173AA
	/// @DnDInput : 2
	/// @DnDParent : 1CAB03E8
	/// @DnDArgument : "msg" "itemArray"
	/// @DnDArgument : "msg_1" "sprite_index"
	show_debug_message(string(itemArray) + @"
	" + string(sprite_index));}