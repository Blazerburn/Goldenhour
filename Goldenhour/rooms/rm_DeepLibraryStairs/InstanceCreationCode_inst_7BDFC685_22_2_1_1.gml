/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54620D23
/// @DnDArgument : "var" "global.RoomSpawnpoints"
/// @DnDArgument : "value" "1"
if(global.RoomSpawnpoints == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 09972AC6
	/// @DnDParent : 54620D23
	/// @DnDArgument : "xpos" "32"
	/// @DnDArgument : "ypos" "544"
	/// @DnDArgument : "objectid" "TestPlayer"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "TestPlayer"
	instance_create_layer(32, 544, "Player", TestPlayer);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7D674DC3
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27ED3E3B
	/// @DnDParent : 7D674DC3
	/// @DnDArgument : "var" "global.RoomSpawnpoints"
	/// @DnDArgument : "value" "2"
	if(global.RoomSpawnpoints == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 75FF2441
		/// @DnDParent : 27ED3E3B
		/// @DnDArgument : "xpos" "596"
		/// @DnDArgument : "ypos" "114"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(596, 114, "Player", TestPlayer);}}