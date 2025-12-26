/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F0241C0
/// @DnDArgument : "var" "gateCollision"
gateCollision = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 12095E70
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "gateCollision"
/// @DnDArgument : "objectid" "TestWall"
/// @DnDSaveInfo : "objectid" "TestWall"
gateCollision = instance_create_layer(x + 0, y + 0, "Instances", TestWall);