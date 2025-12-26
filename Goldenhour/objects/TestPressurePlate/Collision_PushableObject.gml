/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71EDB8F4
/// @DnDArgument : "var" "boxInteracted"
if(boxInteracted == 0){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 7EC13DA1
	/// @DnDParent : 71EDB8F4
	/// @DnDArgument : "msg" ""Box on pressure plate""
	show_debug_message(string("Box on pressure plate"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34846C88
	/// @DnDParent : 71EDB8F4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "boxInteracted"
	boxInteracted = 1;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 0A29BB67
	/// @DnDApplyTo : boxPuzzleController
	/// @DnDParent : 71EDB8F4
	with(boxPuzzleController) {
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 30915F37
		/// @DnDParent : 0A29BB67
		event_user(0);
	}}