/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 3E4FCBDB
/// @DnDArgument : "key" "ord("E")"
var l3E4FCBDB_0;l3E4FCBDB_0 = keyboard_check_pressed(ord("E"));if (l3E4FCBDB_0){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 43274829
	/// @DnDParent : 3E4FCBDB
	/// @DnDArgument : "var" "global.startPlayerDirection"
	global.startPlayerDirection = 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 04B51FB3
	/// @DnDParent : 3E4FCBDB
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.Room2SetSpawnpoint"
	global.Room2SetSpawnpoint = 1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 15DC16BB
	/// @DnDParent : 3E4FCBDB
	/// @DnDArgument : "msg" "global.Room2SetSpawnpoint"
	show_debug_message(string(global.Room2SetSpawnpoint));

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 186B4D6F
	/// @DnDParent : 3E4FCBDB
	/// @DnDArgument : "room" "goToRoom"
	room_goto(goToRoom);}