/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54620D23
/// @DnDArgument : "var" "global.RoomSpawnpoints"
/// @DnDArgument : "value" "1"
if(global.RoomSpawnpoints == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 09972AC6
	/// @DnDParent : 54620D23
	/// @DnDArgument : "xpos" "128"
	/// @DnDArgument : "ypos" "480"
	/// @DnDArgument : "objectid" "TestPlayer"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "TestPlayer"
	instance_create_layer(128, 480, "Player", TestPlayer);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 38721B62
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13BC4EDB
	/// @DnDParent : 38721B62
	/// @DnDArgument : "var" "global.RoomSpawnpoints"
	/// @DnDArgument : "value" "2"
	if(global.RoomSpawnpoints == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6FF25DE9
		/// @DnDParent : 13BC4EDB
		/// @DnDArgument : "xpos" "128"
		/// @DnDArgument : "ypos" "384"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(128, 384, "Player", TestPlayer);}}