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
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50668D3E
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "var" "pushPlayerDIrection"
			if(pushPlayerDIrection == 0){}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4FF03073
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "var" "pushPlayerDIrection"
			/// @DnDArgument : "value" "1"
			if(pushPlayerDIrection == 1){}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3B0538F7
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "var" "pushPlayerDIrection"
			/// @DnDArgument : "value" "2"
			if(pushPlayerDIrection == 2){}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F99435E
			/// @DnDParent : 5CF0C4C3
			/// @DnDArgument : "var" "pushPlayerDIrection"
			/// @DnDArgument : "value" "3"
			if(pushPlayerDIrection == 3){}}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 70FD1E22
	/// @DnDParent : 25378D44
	else{	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 4876A1D7
		/// @DnDParent : 70FD1E22
		/// @DnDArgument : "var" "global.pushingBox"
		global.pushingBox = 0;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 4E085F53
		/// @DnDApplyTo : {TestPlayer}
		/// @DnDParent : 70FD1E22
		with(TestPlayer) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 756A5626
			/// @DnDParent : 4E085F53
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "Speed"
			Speed = 3;
		}}}