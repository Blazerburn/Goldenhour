/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71EDB8F4
/// @DnDArgument : "var" "global.BoxInteracted"
if(global.BoxInteracted == 0){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 7EC13DA1
	/// @DnDParent : 71EDB8F4
	/// @DnDArgument : "msg" ""Box on pressure plate""
	show_debug_message(string("Box on pressure plate"));

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 048DA242
	/// @DnDParent : 71EDB8F4
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.BoxInteracted"
	global.BoxInteracted = 1;}