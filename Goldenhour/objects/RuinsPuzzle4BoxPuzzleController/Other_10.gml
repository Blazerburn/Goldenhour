/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C71C6A1
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "boxesActivated"
boxesActivated += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 590F4861
/// @DnDArgument : "var" "boxesActivated"
/// @DnDArgument : "value" "boxesNeeded"
if(boxesActivated == boxesNeeded){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 1E1F56D8
	/// @DnDParent : 590F4861
	/// @DnDArgument : "msg" ""Box Puzzle Finished""
	show_debug_message(string("Box Puzzle Finished"));

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 586DB7C1
	/// @DnDApplyTo : {Gate}
	/// @DnDParent : 590F4861
	with(Gate) {
	event_user(0);
	}

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 55FE6A51
	/// @DnDParent : 590F4861
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "gate4Open"
	global.gate4Open = 1;}