/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25378D44
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 5CF0C4C3
	/// @DnDParent : 25378D44
	var l5CF0C4C3_0;l5CF0C4C3_0 = keyboard_check_pressed(vk_space);if (l5CF0C4C3_0){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 124AEAAE
		/// @DnDParent : 5CF0C4C3
		/// @DnDArgument : "msg" ""Pushed Box""
		show_debug_message(string("Pushed Box"));
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 02BD244E
		/// @DnDParent : 5CF0C4C3
		/// @DnDArgument : "msg" "global.globalPlayerDirection"
		show_debug_message(string(global.globalPlayerDirection));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50668D3E
		/// @DnDParent : 5CF0C4C3
		/// @DnDArgument : "var" "pushPlayerDIrection"
		if(pushPlayerDIrection == 0){	/// @DnDAction : YoYo Games.Movement.move_and_collide
			/// @DnDVersion : 1
			/// @DnDHash : 727A70CA
			/// @DnDParent : 50668D3E
			/// @DnDArgument : "yvel" "-32"
			/// @DnDArgument : "object" "PushableWall"
			/// @DnDSaveInfo : "object" "PushableWall"
			move_and_collide(0, -32, PushableWall,4,0,0,-1,-1);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FF03073
		/// @DnDParent : 5CF0C4C3
		/// @DnDArgument : "var" "pushPlayerDIrection"
		/// @DnDArgument : "value" "1"
		if(pushPlayerDIrection == 1){	/// @DnDAction : YoYo Games.Movement.move_and_collide
			/// @DnDVersion : 1
			/// @DnDHash : 080D718D
			/// @DnDParent : 4FF03073
			/// @DnDArgument : "xvel" "32"
			/// @DnDArgument : "object" "PushableWall"
			/// @DnDSaveInfo : "object" "PushableWall"
			move_and_collide(32, 0, PushableWall,4,0,0,-1,-1);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B0538F7
		/// @DnDParent : 5CF0C4C3
		/// @DnDArgument : "var" "pushPlayerDIrection"
		/// @DnDArgument : "value" "2"
		if(pushPlayerDIrection == 2){	/// @DnDAction : YoYo Games.Movement.move_and_collide
			/// @DnDVersion : 1
			/// @DnDHash : 63EF3A9C
			/// @DnDParent : 3B0538F7
			/// @DnDArgument : "yvel" "32"
			/// @DnDArgument : "object" "PushableWall"
			/// @DnDSaveInfo : "object" "PushableWall"
			move_and_collide(0, 32, PushableWall,4,0,0,-1,-1);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F99435E
		/// @DnDParent : 5CF0C4C3
		/// @DnDArgument : "var" "pushPlayerDIrection"
		/// @DnDArgument : "value" "3"
		if(pushPlayerDIrection == 3){	/// @DnDAction : YoYo Games.Movement.move_and_collide
			/// @DnDVersion : 1
			/// @DnDHash : 744D4B8B
			/// @DnDParent : 5F99435E
			/// @DnDArgument : "xvel" "-32"
			/// @DnDArgument : "object" "PushableWall"
			/// @DnDSaveInfo : "object" "PushableWall"
			move_and_collide(-32, 0, PushableWall,4,0,0,-1,-1);}}}