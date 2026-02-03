/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79540149
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 47EAFF47
	/// @DnDParent : 79540149
	/// @DnDArgument : "value" "playerDirection"
	/// @DnDArgument : "var" "global.startPlayerDirection"
	global.startPlayerDirection = playerDirection;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2CF7765C
	/// @DnDParent : 79540149
	/// @DnDArgument : "value" "playerSpawnpoint"
	/// @DnDArgument : "var" "global.RoomSpawnpoints"
	global.RoomSpawnpoints = playerSpawnpoint;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 546D6030
	/// @DnDParent : 79540149
	/// @DnDArgument : "value" "60"
	/// @DnDArgument : "var" "global.recentlyInteracted"
	global.recentlyInteracted = 60;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 366B6FAD
	/// @DnDParent : 79540149
	/// @DnDArgument : "msg" "global.recentlyInteracted"
	show_debug_message(string(global.recentlyInteracted));

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 44902068
	/// @DnDParent : 79540149
	/// @DnDArgument : "room" "goToRoom"
	room_goto(goToRoom);}