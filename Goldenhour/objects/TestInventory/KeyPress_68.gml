/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BDCDCE9
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "rowPos"
/// @DnDArgument : "var_1" "itemSelected"
rowPos += 1;
itemSelected += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28E7078F
/// @DnDArgument : "var" "rowPos"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "2"
if(rowPos > 2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A4B19B0
	/// @DnDInput : 2
	/// @DnDParent : 28E7078F
	/// @DnDArgument : "expr_1" "-3"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "rowPos"
	/// @DnDArgument : "var_1" "itemSelected"
	rowPos = 0;
	itemSelected += -3;}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7387FDDD
/// @DnDArgument : "msg" "itemSelected"
show_debug_message(string(itemSelected));