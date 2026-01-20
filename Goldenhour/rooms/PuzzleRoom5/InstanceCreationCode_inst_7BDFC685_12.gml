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
	/// @DnDArgument : "ypos" "416"
	/// @DnDArgument : "objectid" "TestPlayer"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "TestPlayer"
	instance_create_layer(32, 416, "Player", TestPlayer1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5BCD2002
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C63F3BF
	/// @DnDParent : 5BCD2002
	/// @DnDArgument : "var" "global.RoomSpawnpoints"
	/// @DnDArgument : "value" "2"
	if(global.RoomSpawnpoints == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4843F3DE
		/// @DnDParent : 5C63F3BF
		/// @DnDArgument : "xpos" "736"
		/// @DnDArgument : "ypos" "192"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(736, 192, "Player", TestPlayer1);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 01F55131
	/// @DnDParent : 5BCD2002
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53DCDA00
		/// @DnDParent : 01F55131
		/// @DnDArgument : "var" "global.RoomSpawnpoints"
		/// @DnDArgument : "value" "3"
		if(global.RoomSpawnpoints == 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1380D75B
			/// @DnDParent : 53DCDA00
			/// @DnDArgument : "xpos" "112"
			/// @DnDArgument : "ypos" "104"
			/// @DnDArgument : "objectid" "TestPlayer"
			/// @DnDArgument : "layer" ""Player""
			/// @DnDSaveInfo : "objectid" "TestPlayer"
			instance_create_layer(112, 104, "Player", TestPlayer1);}}}