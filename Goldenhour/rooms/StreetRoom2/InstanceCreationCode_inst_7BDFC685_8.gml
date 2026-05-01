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
	/// @DnDArgument : "ypos" "1088"
	/// @DnDArgument : "objectid" "TestPlayer"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "TestPlayer"
	instance_create_layer(128, 1088, "Player", TestPlayer);}

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
		/// @DnDArgument : "xpos" "128"
		/// @DnDArgument : "ypos" "192"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(128, 192, "Player", TestPlayer);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5AAE2E33
	/// @DnDParent : 5BCD2002
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42DC2C1D
		/// @DnDParent : 5AAE2E33
		/// @DnDArgument : "var" "global.RoomSpawnpoints"
		/// @DnDArgument : "value" "2"
		if(global.RoomSpawnpoints == 2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1A38A8A1
			/// @DnDParent : 42DC2C1D
			/// @DnDArgument : "xpos" "128"
			/// @DnDArgument : "ypos" "192"
			/// @DnDArgument : "objectid" "TestPlayer"
			/// @DnDArgument : "layer" ""Player""
			/// @DnDSaveInfo : "objectid" "TestPlayer"
			instance_create_layer(128, 192, "Player", TestPlayer);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 488F64BC
		/// @DnDParent : 5AAE2E33
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7329F1E4
			/// @DnDParent : 488F64BC
			/// @DnDArgument : "var" "global.RoomSpawnpoints"
			/// @DnDArgument : "value" "3"
			if(global.RoomSpawnpoints == 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 12F7681D
				/// @DnDParent : 7329F1E4
				/// @DnDArgument : "xpos" "224"
				/// @DnDArgument : "ypos" "960"
				/// @DnDArgument : "objectid" "TestPlayer"
				/// @DnDArgument : "layer" ""Player""
				/// @DnDSaveInfo : "objectid" "TestPlayer"
				instance_create_layer(224, 960, "Player", TestPlayer);}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5757B828
			/// @DnDParent : 488F64BC
			else{	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4D2957C9
				/// @DnDParent : 5757B828
				/// @DnDArgument : "var" "global.RoomSpawnpoints"
				/// @DnDArgument : "value" "4"
				if(global.RoomSpawnpoints == 4){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 6948DBC4
					/// @DnDParent : 4D2957C9
					/// @DnDArgument : "xpos" "32"
					/// @DnDArgument : "ypos" "704"
					/// @DnDArgument : "objectid" "TestPlayer"
					/// @DnDArgument : "layer" ""Player""
					/// @DnDSaveInfo : "objectid" "TestPlayer"
					instance_create_layer(32, 704, "Player", TestPlayer);}}}}}