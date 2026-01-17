/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 548246D3
/// @DnDInput : 3
/// @DnDArgument : "var" "objectInteracted"
/// @DnDArgument : "var_1" "spriteActive"
/// @DnDArgument : "var_2" "pathPushableWall"
objectInteracted = 0;
spriteActive = 0;
pathPushableWall = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 618DDF8B
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "pathPushableWall"
/// @DnDArgument : "objectid" "PushableWall"
/// @DnDSaveInfo : "objectid" "PushableWall"
pathPushableWall = instance_create_layer(x + 0, y + 0, "Instances", PushableWall);