/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 490F492A
/// @DnDInput : 2
/// @DnDArgument : "var" "pushPlayerDIrection"
/// @DnDArgument : "var_1" "interactedBoxID"
pushPlayerDIrection = 0;
interactedBoxID = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3053DD9B
/// @DnDInput : 2
/// @DnDArgument : "var" "pushableBoxOriginX"
/// @DnDArgument : "var_1" "pushableBoxOriginY"
pushableBoxOriginX = 0;
pushableBoxOriginY = 0;

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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B1C7778
/// @DnDArgument : "var" "pushBoxCollision"
pushBoxCollision = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6E986E8E
/// @DnDArgument : "xpos" "1"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "pushBoxCollision"
/// @DnDArgument : "objectid" "TestWall"
/// @DnDArgument : "layer" ""Instances_2""
/// @DnDSaveInfo : "objectid" "TestWall"
pushBoxCollision = instance_create_layer(x + 1, y + 1, "Instances_2", TestWall);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 2E045804
/// @DnDInput : 2
/// @DnDApplyTo : pushBoxCollision
/// @DnDArgument : "value" ".49"
/// @DnDArgument : "value_1" ".49"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
with(pushBoxCollision) {
image_xscale = .49;
image_yscale = .49;
}