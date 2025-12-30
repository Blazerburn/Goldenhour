/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 490F492A
/// @DnDInput : 2
/// @DnDArgument : "var" "pushPlayerDIrection"
/// @DnDArgument : "var_1" "interactedBoxID"
pushPlayerDIrection = 0;
interactedBoxID = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 32B12C37
/// @DnDArgument : "var" "global.pushingBox"
global.pushingBox = 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 104FFE62
/// @DnDArgument : "var" "objectID"
/// @DnDArgument : "value" "0"
var objectID = 0;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 6035164C
/// @DnDArgument : "msg" ""Object ID:", objectID"
show_debug_message(string("Object ID:", objectID));