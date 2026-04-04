/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54620D23
/// @DnDArgument : "var" "global.RoomSpawnpoints"
/// @DnDArgument : "value" "1"
if(global.RoomSpawnpoints == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4843F3DE
	/// @DnDParent : 54620D23
	/// @DnDArgument : "xpos" "128"
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "TestPlayer"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "TestPlayer"
	instance_create_layer(128, 32, "Player", TestPlayer);}

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
		/// @DnDHash : 09972AC6
		/// @DnDParent : 5C63F3BF
		/// @DnDArgument : "xpos" "244"
		/// @DnDArgument : "ypos" "672"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(244, 672, "Player", TestPlayer);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6939B99C
	/// @DnDParent : 5BCD2002
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 411D93A5
		/// @DnDParent : 6939B99C
		/// @DnDArgument : "var" "global.RoomSpawnpoints"
		/// @DnDArgument : "value" "3"
		if(global.RoomSpawnpoints == 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 29F7C560
			/// @DnDParent : 411D93A5
			/// @DnDArgument : "xpos" "128"
			/// @DnDArgument : "ypos" "896"
			/// @DnDArgument : "objectid" "TestPlayer"
			/// @DnDArgument : "layer" ""Player""
			/// @DnDSaveInfo : "objectid" "TestPlayer"
			instance_create_layer(128, 896, "Player", TestPlayer);}}}