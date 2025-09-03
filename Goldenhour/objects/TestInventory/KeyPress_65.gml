/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0EE513ED
/// @DnDInput : 2
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "rowPos"
/// @DnDArgument : "var_1" "itemSelected"
rowPos += -1;
itemSelected += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0ADB90E3
/// @DnDArgument : "var" "rowPos"
/// @DnDArgument : "op" "1"
if(rowPos < 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77C1FA07
	/// @DnDInput : 2
	/// @DnDParent : 0ADB90E3
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "expr_1" "3"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "rowPos"
	/// @DnDArgument : "var_1" "itemSelected"
	rowPos = 2;
	itemSelected += 3;}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4A19C627
/// @DnDArgument : "msg" "itemSelected"
show_debug_message(string(itemSelected));