/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 622FCCB0
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "3"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "colPos"
/// @DnDArgument : "var_1" "itemSelected"
colPos += 1;
itemSelected += 3;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 493CF4D2
/// @DnDArgument : "var" "colPos"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "2"
if(colPos > 2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 378C9F99
	/// @DnDInput : 2
	/// @DnDParent : 493CF4D2
	/// @DnDArgument : "expr_1" "-9"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "colPos"
	/// @DnDArgument : "var_1" "itemSelected"
	colPos = 0;
	itemSelected += -9;}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2CDB58EE
/// @DnDArgument : "msg" "itemSelected"
show_debug_message(string(itemSelected));