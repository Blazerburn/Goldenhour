/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16478016
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1E1E6C7F
	/// @DnDParent : 16478016
	/// @DnDArgument : "value" "playerDirection"
	/// @DnDArgument : "var" "global.startPlayerDirection"
	global.startPlayerDirection = playerDirection;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 39F755D3
	/// @DnDParent : 16478016
	/// @DnDArgument : "value" "playerSpawnpoint"
	/// @DnDArgument : "var" "global.RoomSpawnpoints"
	global.RoomSpawnpoints = playerSpawnpoint;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5A764D16
	/// @DnDParent : 16478016
	/// @DnDArgument : "value" "60"
	/// @DnDArgument : "var" "global.recentlyInteracted"
	global.recentlyInteracted = 60;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 65AFE229
	/// @DnDParent : 16478016
	/// @DnDArgument : "msg" "global.recentlyInteracted"
	show_debug_message(string(global.recentlyInteracted));

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0766D1D3
	/// @DnDParent : 16478016
	/// @DnDArgument : "room" "goToRoom"
	room_goto(goToRoom);}