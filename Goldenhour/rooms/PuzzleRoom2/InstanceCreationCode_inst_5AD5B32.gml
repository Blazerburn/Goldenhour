/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E156082
/// @DnDArgument : "var" "global.RoomSpawnpoints"
/// @DnDArgument : "value" "1"
if(global.RoomSpawnpoints == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1FBE793D
	/// @DnDParent : 1E156082
	/// @DnDArgument : "xpos" "32"
	/// @DnDArgument : "ypos" "288"
	/// @DnDArgument : "objectid" "TestPlayer"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "TestPlayer"
	instance_create_layer(32, 288, "Player", TestPlayer1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 120D9495
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B7193A3
	/// @DnDParent : 120D9495
	/// @DnDArgument : "var" "global.RoomSpawnpoints"
	/// @DnDArgument : "value" "2"
	if(global.RoomSpawnpoints == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 230FFB81
		/// @DnDParent : 4B7193A3
		/// @DnDArgument : "xpos" "672"
		/// @DnDArgument : "ypos" "384"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(672, 384, "Player", TestPlayer1);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 39BE1847
	/// @DnDParent : 120D9495
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DB252D3
		/// @DnDParent : 39BE1847
		/// @DnDArgument : "var" "global.RoomSpawnpoints"
		/// @DnDArgument : "value" "3"
		if(global.RoomSpawnpoints == 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7221CCD4
			/// @DnDParent : 1DB252D3
			/// @DnDArgument : "xpos" "192"
			/// @DnDArgument : "ypos" "256"
			/// @DnDArgument : "objectid" "TestPlayer"
			/// @DnDArgument : "layer" ""Player""
			/// @DnDSaveInfo : "objectid" "TestPlayer"
			instance_create_layer(192, 256, "Player", TestPlayer1);}}}