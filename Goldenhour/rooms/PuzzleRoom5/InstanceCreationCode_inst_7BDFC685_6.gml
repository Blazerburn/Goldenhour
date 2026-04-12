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
		/// @DnDArgument : "xpos" "256"
		/// @DnDArgument : "ypos" "32"
		/// @DnDArgument : "objectid" "TestPlayer"
		/// @DnDArgument : "layer" ""Player""
		/// @DnDSaveInfo : "objectid" "TestPlayer"
		instance_create_layer(256, 32, "Player", TestPlayer);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 56D5BF4E
	/// @DnDParent : 5BCD2002
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5B3023CE
		/// @DnDParent : 56D5BF4E
		/// @DnDArgument : "var" "global.RoomSpawnpoints"
		/// @DnDArgument : "value" "3"
		if(global.RoomSpawnpoints == 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2ED576D3
			/// @DnDParent : 5B3023CE
			/// @DnDArgument : "xpos" "480"
			/// @DnDArgument : "ypos" "256"
			/// @DnDArgument : "objectid" "TestPlayer"
			/// @DnDArgument : "layer" ""Player""
			/// @DnDSaveInfo : "objectid" "TestPlayer"
			instance_create_layer(480, 256, "Player", TestPlayer);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 728DD589
		/// @DnDParent : 56D5BF4E
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C5A28CF
			/// @DnDParent : 728DD589
			/// @DnDArgument : "var" "global.RoomSpawnpoints"
			/// @DnDArgument : "value" "4"
			if(global.RoomSpawnpoints == 4){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7C8141F8
				/// @DnDParent : 3C5A28CF
				/// @DnDArgument : "xpos" "256"
				/// @DnDArgument : "ypos" "448"
				/// @DnDArgument : "objectid" "TestPlayer"
				/// @DnDArgument : "layer" ""Player""
				/// @DnDSaveInfo : "objectid" "TestPlayer"
				instance_create_layer(256, 448, "Player", TestPlayer);}}}}