/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5623CEB7
/// @DnDArgument : "var" "global.Room2SetSpawnpoint"
/// @DnDArgument : "value" "1"
if(global.Room2SetSpawnpoint == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6C4B0DCF
	/// @DnDParent : 5623CEB7
	/// @DnDArgument : "xpos" "384"
	/// @DnDArgument : "ypos" "704"
	/// @DnDArgument : "objectid" "TestPlayer"
	/// @DnDSaveInfo : "objectid" "TestPlayer"
	instance_create_layer(384, 704, "Instances", TestPlayer1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 56D0CE26
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 488F8953
	/// @DnDParent : 56D0CE26
	/// @DnDArgument : "var" "global.Room2SetSpawnpoint"
	/// @DnDArgument : "value" "2"
	if(global.Room2SetSpawnpoint == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 386F0AE9
		/// @DnDParent : 488F8953
		/// @DnDArgument : "xpos" "576"
		/// @DnDArgument : "ypos" "672"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(576, 672, "Instances", TestPlayer1);}}