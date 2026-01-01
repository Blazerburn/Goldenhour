/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0BD682ED
/// @DnDInput : 2
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "boxesActivated"
/// @DnDArgument : "var_1" "boxesNeeded"
boxesActivated = 0;
boxesNeeded = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1F9ED1F1
/// @DnDArgument : "var" "gate4Open"
global.gate4Open = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68B1B76A
/// @DnDArgument : "var" "global.gate4Open"
/// @DnDArgument : "value" "1"
if(global.gate4Open == 1){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 58F67779
	/// @DnDParent : 68B1B76A
	/// @DnDArgument : "msg" ""Box Puzzle Finished""
	show_debug_message(string("Box Puzzle Finished"));

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6FE2340C
	/// @DnDApplyTo : {Gate}
	/// @DnDParent : 68B1B76A
	with(Gate) {
	event_user(0);
	}}