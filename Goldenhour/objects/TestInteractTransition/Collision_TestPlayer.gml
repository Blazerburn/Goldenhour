/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 176BE8A8
var l176BE8A8_0;l176BE8A8_0 = keyboard_check_pressed(vk_space);if (l176BE8A8_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4304426D
	/// @DnDParent : 176BE8A8
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2CD8A359
		/// @DnDParent : 4304426D
		/// @DnDArgument : "var" "global.inventoryOpen"
		if(global.inventoryOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0FF5EC71
			/// @DnDParent : 2CD8A359
			/// @DnDArgument : "var" "global.recentlyInteracted"
			if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 7B91709F
				/// @DnDParent : 0FF5EC71
				/// @DnDArgument : "value" "playerDirection"
				/// @DnDArgument : "var" "global.startPlayerDirection"
				global.startPlayerDirection = playerDirection;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 0C02C9D5
				/// @DnDParent : 0FF5EC71
				/// @DnDArgument : "value" "playerSpawnpoint"
				/// @DnDArgument : "var" "global.RoomSpawnpoints"
				global.RoomSpawnpoints = playerSpawnpoint;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 55DEF4FF
				/// @DnDParent : 0FF5EC71
				/// @DnDArgument : "value" "60"
				/// @DnDArgument : "var" "global.recentlyInteracted"
				global.recentlyInteracted = 60;
			
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 3792E4CD
				/// @DnDParent : 0FF5EC71
				/// @DnDArgument : "room" "goToRoom"
				room_goto(goToRoom);}}}}