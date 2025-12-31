/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25378D44
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13C50DD0
	/// @DnDParent : 25378D44
	/// @DnDArgument : "var" "global.pushingBox"
	if(global.pushingBox == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 5CF0C4C3
		/// @DnDParent : 13C50DD0
		var l5CF0C4C3_0;l5CF0C4C3_0 = keyboard_check_pressed(vk_space);if (l5CF0C4C3_0){	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 6B8C46FC
			/// @DnDInput : 2
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "target" "pushableBoxOriginX"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "target_1" "pushableBoxOriginY"
			/// @DnDArgument : "target_temp_1" "1"
			/// @DnDArgument : "instvar_1" "1"
			var pushableBoxOriginX = x;
			var pushableBoxOriginY = y;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 2DFB0BD2
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "global.playerAnimating"
			global.playerAnimating = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 30626443
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "expr" "global.globalPlayerDirection"
			/// @DnDArgument : "var" "pushPlayerDIrection"
			pushPlayerDIrection = global.globalPlayerDirection;
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
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
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 15A4440A
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "expr" "objectID"
			/// @DnDArgument : "var" "interactedBoxID"
			interactedBoxID = objectID;
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 186EA6FD
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "msg" "interactedBoxID"
			show_debug_message(string(interactedBoxID));
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 28DEF876
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "pushingBox"
			global.pushingBox = 1;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 4461ACFA
			/// @DnDApplyTo : {TestPlayer}
			/// @DnDParent : 5CF0C4C3
			with(TestPlayer) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 58C6E331
				/// @DnDParent : 4461ACFA
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "Speed"
				Speed = 1;
			}
		
			/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 41A9A61E
			/// @DnDInput : 2
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "target" "pushableboxX"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "target_1" "pushableboxY"
			/// @DnDArgument : "target_temp_1" "1"
			/// @DnDArgument : "instvar_1" "1"
			var pushableboxX = x;
			var pushableboxY = y;
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 6B710A5D
			/// @DnDInput : 2
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "msg" "pushableBoxOriginX"
			/// @DnDArgument : "msg_1" "pushableBoxOriginY"
			show_debug_message(string(pushableBoxOriginX) + @"
			" + string(pushableBoxOriginY));
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50668D3E
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "var" "pushPlayerDIrection"
			if(pushPlayerDIrection == 0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 51A9D256
				/// @DnDInput : 2
				/// @DnDApplyTo : {TestPlayer}
				/// @DnDParent : 50668D3E
				/// @DnDArgument : "value" "pushableBoxOriginX + 16"
				/// @DnDArgument : "value_1" "pushableBoxOriginY + 16"
				/// @DnDArgument : "instvar_1" "1"
				with(TestPlayer) {
				x = pushableBoxOriginX + 16;
				y = pushableBoxOriginY + 16;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4FF03073
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "var" "pushPlayerDIrection"
			/// @DnDArgument : "value" "1"
			if(pushPlayerDIrection == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 06F80CC8
				/// @DnDInput : 2
				/// @DnDApplyTo : {TestPlayer}
				/// @DnDParent : 4FF03073
				/// @DnDArgument : "value" "pushableBoxOriginX - 16"
				/// @DnDArgument : "value_1" "pushableBoxOriginY"
				/// @DnDArgument : "instvar_1" "1"
				with(TestPlayer) {
				x = pushableBoxOriginX - 16;
				y = pushableBoxOriginY;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3B0538F7
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "var" "pushPlayerDIrection"
			/// @DnDArgument : "value" "2"
			if(pushPlayerDIrection == 2){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 0295A6E3
				/// @DnDInput : 2
				/// @DnDApplyTo : {TestPlayer}
				/// @DnDParent : 3B0538F7
				/// @DnDArgument : "value" "pushableBoxOriginX + 16"
				/// @DnDArgument : "value_1" "pushableBoxOriginY - 28"
				/// @DnDArgument : "instvar_1" "1"
				with(TestPlayer) {
				x = pushableBoxOriginX + 16;
				y = pushableBoxOriginY - 28;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F99435E
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "var" "pushPlayerDIrection"
			/// @DnDArgument : "value" "3"
			if(pushPlayerDIrection == 3){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 6B18F6C9
				/// @DnDInput : 2
				/// @DnDApplyTo : {TestPlayer}
				/// @DnDParent : 5F99435E
				/// @DnDArgument : "value" "pushableBoxOriginX + 48"
				/// @DnDArgument : "value_1" "pushableBoxOriginY"
				/// @DnDArgument : "instvar_1" "1"
				with(TestPlayer) {
				x = pushableBoxOriginX + 48;
				y = pushableBoxOriginY;
				}}}}}