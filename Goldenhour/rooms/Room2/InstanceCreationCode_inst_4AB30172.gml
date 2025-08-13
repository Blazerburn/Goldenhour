/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 385D39E9
/// @DnDArgument : "var" "global.Room2SetSpawnpoint"
/// @DnDArgument : "value" "1"
if(global.Room2SetSpawnpoint == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 04053C9F
	/// @DnDParent : 385D39E9
	/// @DnDArgument : "xpos" "544"
	/// @DnDArgument : "ypos" "416"
	/// @DnDArgument : "objectid" "TestPlayer"
	/// @DnDSaveInfo : "objectid" "TestPlayer"
	instance_create_layer(544, 416, "Instances", TestPlayer);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 65369D1F
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64C4931A
	/// @DnDParent : 65369D1F
	/// @DnDArgument : "var" "global.Room2SetSpawnpoint"
	/// @DnDArgument : "value" "2"
	if(global.Room2SetSpawnpoint == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 500D9FBA
		/// @DnDParent : 64C4931A
		/// @DnDArgument : "xpos" "384"
		/// @DnDArgument : "ypos" "480"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(384, 480, "Instances", TestPlayer);}}