/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2AEF4493
/// @DnDArgument : "expr" "global.globalPlayerDirection"
/// @DnDArgument : "var" "pushPlayerDIrection"
pushPlayerDIrection = global.globalPlayerDirection;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D235563
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)with (objectID)$(13_10){$(13_10)	$(13_10)}"
/// @description Execute Code
with (objectID)
{
	
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47D919FC
/// @DnDArgument : "var" "global.pushingBox"
/// @DnDArgument : "value" "1"
if(global.pushingBox == 1){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 600F05A6
	/// @DnDParent : 47D919FC
	/// @DnDArgument : "msg" ""Moving Object ID:", objectID"
	show_debug_message(string("Moving Object ID:", objectID));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 38316AA2
	/// @DnDParent : 47D919FC
	/// @DnDArgument : "msg" "objectID"
	show_debug_message(string(objectID));

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 764834ED
	/// @DnDInput : 4
	/// @DnDParent : 47D919FC
	/// @DnDArgument : "var" "right"
	/// @DnDArgument : "value" "keyboard_check(vk_right) or keyboard_check(ord("D"))"
	/// @DnDArgument : "var_1" "left"
	/// @DnDArgument : "value_1" "keyboard_check(vk_left) or keyboard_check(ord("A"))"
	/// @DnDArgument : "var_2" "up"
	/// @DnDArgument : "value_2" "keyboard_check(vk_up) or keyboard_check(ord("W"))"
	/// @DnDArgument : "var_3" "down"
	/// @DnDArgument : "value_3" "keyboard_check(vk_down) or keyboard_check(ord("S"))"
	var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	var down = keyboard_check(vk_down) or keyboard_check(ord("S"));

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27A1FF2D
	/// @DnDInput : 2
	/// @DnDParent : 47D919FC
	/// @DnDArgument : "var" "xinput"
	/// @DnDArgument : "value" "right - left"
	/// @DnDArgument : "var_1" "yinput"
	/// @DnDArgument : "value_1" "down - up"
	var xinput = right - left;
	var yinput = down - up;

	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 09CC46E2
	/// @DnDParent : 47D919FC
	/// @DnDArgument : "xvel" "xinput * 1"
	/// @DnDArgument : "yvel" "yinput * 1"
	/// @DnDArgument : "maxxmove" "1"
	/// @DnDArgument : "maxymove" "1"
	/// @DnDArgument : "object" "PushableWall"
	/// @DnDSaveInfo : "object" "PushableWall"
	move_and_collide(xinput * 1, yinput * 1, [PushableWall],4,0,0,1,1);}