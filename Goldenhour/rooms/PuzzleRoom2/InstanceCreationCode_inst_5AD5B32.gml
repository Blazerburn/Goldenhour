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
	instance_create_layer(32, 288, "Player", TestPlayer);}

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
		/// @DnDArgument : "ypos" "416"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(672, 416, "Player", TestPlayer);}

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
			instance_create_layer(192, 256, "Player", TestPlayer);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 61455CB9
		/// @DnDParent : 39BE1847
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F885FDC
			/// @DnDParent : 61455CB9
			/// @DnDArgument : "var" "global.RoomSpawnpoints"
			/// @DnDArgument : "value" "4"
			if(global.RoomSpawnpoints == 4){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1266A97D
				/// @DnDParent : 1F885FDC
				/// @DnDArgument : "xpos" "672"
				/// @DnDArgument : "ypos" "128"
				/// @DnDArgument : "objectid" "TestPlayer"
				/// @DnDArgument : "layer" ""Player""
				/// @DnDSaveInfo : "objectid" "TestPlayer"
				instance_create_layer(672, 128, "Player", TestPlayer);}}}}