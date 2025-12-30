/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2AEF4493
/// @DnDArgument : "expr" "global.globalPlayerDirection"
/// @DnDArgument : "var" "pushPlayerDIrection"
pushPlayerDIrection = global.globalPlayerDirection;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E36DB31
/// @DnDArgument : "var" "objectID"
/// @DnDArgument : "value" "interactedBoxID"
if(objectID == interactedBoxID){	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 3C9EABB1
	/// @DnDApplyTo : interactedBoxID
	/// @DnDParent : 0E36DB31
	with(interactedBoxID) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47D919FC
		/// @DnDParent : 3C9EABB1
		/// @DnDArgument : "var" "global.pushingBox"
		/// @DnDArgument : "value" "1"
		if(global.pushingBox == 1){	/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 764834ED
			/// @DnDInput : 4
			/// @DnDParent : 47D919FC
			/// @DnDArgument : "var" "right"
			/// @DnDArgument : "value" "keyboard_check(vk_right) or keyboard_check(ord("D"))"
			/// @DnDArgument : "var_1" "left"
			/// @DnDArgument : "value_1" "keyboard_check(vk_left) or keyboard_check(ord("A"))"
			/// @DnDArgument : "var_2" "up"
			/// @DnDArgument : "value_2" "keyboard_check(vk_up) or keyboard_check(ord("W"))"
			/// @DnDArgument : "var_3" "down"
			/// @DnDArgument : "value_3" "keyboard_check(vk_down) or keyboard_check(ord("S"))"
			var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
			var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
			var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
			var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 27A1FF2D
			/// @DnDInput : 2
			/// @DnDParent : 47D919FC
			/// @DnDArgument : "var" "xinput"
			/// @DnDArgument : "value" "right - left"
			/// @DnDArgument : "var_1" "yinput"
			/// @DnDArgument : "value_1" "down - up"
			var xinput = right - left;
			var yinput = down - up;
		
			/// @DnDAction : YoYo Games.Movement.move_and_collide
			/// @DnDVersion : 1
			/// @DnDHash : 09CC46E2
			/// @DnDParent : 47D919FC
			/// @DnDArgument : "xvel" "xinput * 1"
			/// @DnDArgument : "yvel" "yinput * 1"
			/// @DnDArgument : "maxxmove" "1"
			/// @DnDArgument : "maxymove" "1"
			/// @DnDArgument : "object" "PushableWall"
			/// @DnDSaveInfo : "object" "PushableWall"
			move_and_collide(xinput * 1, yinput * 1, [PushableWall],4,0,0,1,1);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 43D793A7
			/// @DnDParent : 47D919FC
			/// @DnDArgument : "var" "global.recentlyInteracted"
			if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
				/// @DnDVersion : 1
				/// @DnDHash : 35D9AC80
				/// @DnDParent : 43D793A7
				var l35D9AC80_0;l35D9AC80_0 = keyboard_check_pressed(vk_space);if (l35D9AC80_0){	/// @DnDAction : YoYo Games.Common.Set_Global
					/// @DnDVersion : 1
					/// @DnDHash : 71A81D87
					/// @DnDParent : 35D9AC80
					/// @DnDArgument : "var" "global.pushingBox"
					global.pushingBox = 0;
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 1DE48868
					/// @DnDApplyTo : {TestPlayer}
					/// @DnDParent : 35D9AC80
					with(TestPlayer) {
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 23A09B59
						/// @DnDParent : 1DE48868
						/// @DnDArgument : "expr" "3"
						/// @DnDArgument : "var" "Speed"
						Speed = 3;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 199C4B59
						/// @DnDParent : 1DE48868
						/// @DnDArgument : "expr" "30"
						/// @DnDArgument : "var" "global.recentlyInteracted"
						global.recentlyInteracted = 30;
					}
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 03FB8335
					/// @DnDParent : 35D9AC80
					/// @DnDArgument : "var" "interactedBoxID"
					interactedBoxID = 0;
				
					/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
					/// @DnDVersion : 1
					/// @DnDHash : 01C1226F
					/// @DnDParent : 35D9AC80
					/// @DnDArgument : "msg" "interactedBoxID"
					show_debug_message(string(interactedBoxID));}}}
	}}