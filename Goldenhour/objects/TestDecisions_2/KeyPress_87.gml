/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C5BDA25
/// @DnDArgument : "var" "textSelected"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "textMin"
if(textSelected > textMin){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07A56DE4
	/// @DnDParent : 1C5BDA25
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "textSelected"
	textSelected += -1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 2ADDB0CA
	/// @DnDParent : 1C5BDA25
	/// @DnDArgument : "msg" "textSelected"
	show_debug_message(string(textSelected));}