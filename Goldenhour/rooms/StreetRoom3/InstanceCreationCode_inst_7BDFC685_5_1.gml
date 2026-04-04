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
	/// @DnDArgument : "ypos" "256"
	/// @DnDArgument : "objectid" "TestPlayer"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "TestPlayer"
	instance_create_layer(32, 256, "Player", TestPlayer);}

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
		/// @DnDArgument : "xpos" "528"
		/// @DnDArgument : "ypos" "178"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(528, 178, "Player", TestPlayer);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3BA1C846
	/// @DnDParent : 5BCD2002
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C4A7A36
		/// @DnDParent : 3BA1C846
		/// @DnDArgument : "var" "global.RoomSpawnpoints"
		/// @DnDArgument : "value" "3"
		if(global.RoomSpawnpoints == 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 32B53A70
			/// @DnDParent : 0C4A7A36
			/// @DnDArgument : "xpos" "960"
			/// @DnDArgument : "ypos" "256"
			/// @DnDArgument : "objectid" "TestPlayer"
			/// @DnDArgument : "layer" ""Player""
			/// @DnDSaveInfo : "objectid" "TestPlayer"
			instance_create_layer(960, 256, "Player", TestPlayer);}}}