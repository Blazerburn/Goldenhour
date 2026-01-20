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
		if(global.pushingBox == 1){	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 791D89C3
			/// @DnDInput : 2
			/// @DnDParent : 47D919FC
			/// @DnDArgument : "target" "pushableBoxOriginX"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "target_1" "pushableBoxOriginY"
			/// @DnDArgument : "target_temp_1" "1"
			/// @DnDArgument : "instvar_1" "1"
			var pushableBoxOriginX = x;
			var pushableBoxOriginY = y;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
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
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3EC7CB27
			/// @DnDInput : 2
			/// @DnDApplyTo : pushBoxCollision
			/// @DnDParent : 47D919FC
			/// @DnDArgument : "value" "pushableBoxOriginX"
			/// @DnDArgument : "value_1" "pushableBoxOriginY"
			/// @DnDArgument : "instvar_1" "1"
			with(pushBoxCollision) {
			x = pushableBoxOriginX;
			y = pushableBoxOriginY;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6E0F5B88
			/// @DnDParent : 47D919FC
			/// @DnDArgument : "var" "pushPlayerDIrection"
			if(pushPlayerDIrection == 0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 26770A2D
				/// @DnDInput : 2
				/// @DnDApplyTo : {TestPlayer1}
				/// @DnDParent : 6E0F5B88
				/// @DnDArgument : "value" "pushableBoxOriginX + 16"
				/// @DnDArgument : "value_1" "pushableBoxOriginY + 16"
				/// @DnDArgument : "instvar_1" "1"
				with(TestPlayer1) {
				x = pushableBoxOriginX + 16;
				y = pushableBoxOriginY + 16;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7B46F957
				/// @DnDParent : 6E0F5B88
				/// @DnDArgument : "var" "global.playerMoving"
				/// @DnDArgument : "value" "1"
				if(global.playerMoving == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 67CE02AD
					/// @DnDApplyTo : {TestPlayer1}
					/// @DnDParent : 7B46F957
					/// @DnDArgument : "value" "CondiBackwardWalking"
					/// @DnDArgument : "instvar" "10"
					with(TestPlayer1) {
					sprite_index = CondiBackwardWalking;
					}}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 0875ACC0
				/// @DnDParent : 6E0F5B88
				else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 75771792
					/// @DnDApplyTo : {TestPlayer1}
					/// @DnDParent : 0875ACC0
					/// @DnDArgument : "value" "CondiBackwardIdle"
					/// @DnDArgument : "instvar" "10"
					with(TestPlayer1) {
					sprite_index = CondiBackwardIdle;
					}}}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 72FA1EC3
			/// @DnDParent : 47D919FC
			else{	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 18B2331E
				/// @DnDParent : 72FA1EC3
				/// @DnDArgument : "var" "pushPlayerDIrection"
				/// @DnDArgument : "value" "1"
				if(pushPlayerDIrection == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 3F5F0045
					/// @DnDInput : 2
					/// @DnDApplyTo : {TestPlayer1}
					/// @DnDParent : 18B2331E
					/// @DnDArgument : "value" "pushableBoxOriginX - 16"
					/// @DnDArgument : "value_1" "pushableBoxOriginY"
					/// @DnDArgument : "instvar_1" "1"
					with(TestPlayer1) {
					x = pushableBoxOriginX - 16;
					y = pushableBoxOriginY;
					}
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 73186A02
					/// @DnDParent : 18B2331E
					/// @DnDArgument : "var" "global.playerMoving"
					/// @DnDArgument : "value" "1"
					if(global.playerMoving == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
						/// @DnDVersion : 1
						/// @DnDHash : 28CB115D
						/// @DnDApplyTo : {TestPlayer1}
						/// @DnDParent : 73186A02
						/// @DnDArgument : "value" "CondiRightWalking"
						/// @DnDArgument : "instvar" "10"
						with(TestPlayer1) {
						sprite_index = CondiRightWalking;
						}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 4B216F77
					/// @DnDParent : 18B2331E
					else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
						/// @DnDVersion : 1
						/// @DnDHash : 60404F8E
						/// @DnDApplyTo : {TestPlayer1}
						/// @DnDParent : 4B216F77
						/// @DnDArgument : "value" "CondiRightIdle"
						/// @DnDArgument : "instvar" "10"
						with(TestPlayer1) {
						sprite_index = CondiRightIdle;
						}}}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 16A7BB78
				/// @DnDParent : 72FA1EC3
				else{	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1CAFBCC1
					/// @DnDParent : 16A7BB78
					/// @DnDArgument : "var" "pushPlayerDIrection"
					/// @DnDArgument : "value" "2"
					if(pushPlayerDIrection == 2){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
						/// @DnDVersion : 1
						/// @DnDHash : 3233E80C
						/// @DnDInput : 2
						/// @DnDApplyTo : {TestPlayer1}
						/// @DnDParent : 1CAFBCC1
						/// @DnDArgument : "value" "pushableBoxOriginX + 16"
						/// @DnDArgument : "value_1" "pushableBoxOriginY - 28"
						/// @DnDArgument : "instvar_1" "1"
						with(TestPlayer1) {
						x = pushableBoxOriginX + 16;
						y = pushableBoxOriginY - 28;
						}
					
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 19F337E3
						/// @DnDParent : 1CAFBCC1
						/// @DnDArgument : "var" "global.playerMoving"
						/// @DnDArgument : "value" "1"
						if(global.playerMoving == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
							/// @DnDVersion : 1
							/// @DnDHash : 1219FEA9
							/// @DnDApplyTo : {TestPlayer1}
							/// @DnDParent : 19F337E3
							/// @DnDArgument : "value" "CondiForwardWalking"
							/// @DnDArgument : "instvar" "10"
							with(TestPlayer1) {
							sprite_index = CondiForwardWalking;
							}}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 7CB743A4
						/// @DnDParent : 1CAFBCC1
						else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
							/// @DnDVersion : 1
							/// @DnDHash : 49DF83A5
							/// @DnDApplyTo : {TestPlayer1}
							/// @DnDParent : 7CB743A4
							/// @DnDArgument : "value" "CondiForwardIdle"
							/// @DnDArgument : "instvar" "10"
							with(TestPlayer1) {
							sprite_index = CondiForwardIdle;
							}}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 45EB57DA
					/// @DnDParent : 16A7BB78
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1E1691A3
						/// @DnDParent : 45EB57DA
						/// @DnDArgument : "var" "pushPlayerDIrection"
						/// @DnDArgument : "value" "3"
						if(pushPlayerDIrection == 3){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
							/// @DnDVersion : 1
							/// @DnDHash : 17FE39B4
							/// @DnDInput : 2
							/// @DnDApplyTo : {TestPlayer1}
							/// @DnDParent : 1E1691A3
							/// @DnDArgument : "value" "pushableBoxOriginX + 48"
							/// @DnDArgument : "value_1" "pushableBoxOriginY"
							/// @DnDArgument : "instvar_1" "1"
							with(TestPlayer1) {
							x = pushableBoxOriginX + 48;
							y = pushableBoxOriginY;
							}
						
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 3F890AF8
							/// @DnDParent : 1E1691A3
							/// @DnDArgument : "var" "global.playerMoving"
							/// @DnDArgument : "value" "1"
							if(global.playerMoving == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
								/// @DnDVersion : 1
								/// @DnDHash : 445C9B76
								/// @DnDApplyTo : {TestPlayer1}
								/// @DnDParent : 3F890AF8
								/// @DnDArgument : "value" "CondiLeftWalking"
								/// @DnDArgument : "instvar" "10"
								with(TestPlayer1) {
								sprite_index = CondiLeftWalking;
								}}
						
							/// @DnDAction : YoYo Games.Common.Else
							/// @DnDVersion : 1
							/// @DnDHash : 4FC00609
							/// @DnDParent : 1E1691A3
							else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
								/// @DnDVersion : 1
								/// @DnDHash : 02142C7D
								/// @DnDApplyTo : {TestPlayer1}
								/// @DnDParent : 4FC00609
								/// @DnDArgument : "value" "CondiLeftIdle"
								/// @DnDArgument : "instvar" "10"
								with(TestPlayer1) {
								sprite_index = CondiLeftIdle;
								}}}}}}
		
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
					/// @DnDInput : 2
					/// @DnDParent : 35D9AC80
					/// @DnDArgument : "var" "global.pushingBox"
					/// @DnDArgument : "var_1" "global.playerAnimating"
					global.pushingBox = 0;
					global.playerAnimating = 0;
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 1DE48868
					/// @DnDApplyTo : {TestPlayer1}
					/// @DnDParent : 35D9AC80
					with(TestPlayer1) {
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