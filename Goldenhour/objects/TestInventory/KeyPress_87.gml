/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7EE8BE8B
/// @DnDInput : 2
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-3"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "colPos"
/// @DnDArgument : "var_1" "itemSelected"
colPos += -1;
itemSelected += -3;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 777A6E5D
/// @DnDArgument : "var" "colPos"
/// @DnDArgument : "op" "1"
if(colPos < 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62454DEF
	/// @DnDInput : 2
	/// @DnDParent : 777A6E5D
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "expr_1" "9"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "colPos"
	/// @DnDArgument : "var_1" "itemSelected"
	colPos = 2;
	itemSelected += 9;}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2EA82880
/// @DnDArgument : "msg" "itemSelected"
show_debug_message(string(itemSelected));