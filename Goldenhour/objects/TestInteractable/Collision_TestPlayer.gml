/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C4DECDA
/// @DnDArgument : "var" "global.inventoryOpen"
if(global.inventoryOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10CB9B08
	/// @DnDParent : 4C4DECDA
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 712AB948
		/// @DnDParent : 10CB9B08
		/// @DnDArgument : "var" "global.recentlyInteracted"
		if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7284B41C
			/// @DnDParent : 712AB948
			/// @DnDArgument : "var" "objectInteracted"
			if(objectInteracted == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
				/// @DnDVersion : 1
				/// @DnDHash : 09213E1C
				/// @DnDParent : 7284B41C
				var l09213E1C_0;l09213E1C_0 = keyboard_check_pressed(vk_space);if (l09213E1C_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 519891F9
					/// @DnDParent : 09213E1C
					/// @DnDArgument : "objectid" "TestConvo"
					/// @DnDSaveInfo : "objectid" "TestConvo"
					instance_create_layer(0, 0, "Instances", TestConvo);
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 0004CFE4
					/// @DnDApplyTo : {TestConvo}
					/// @DnDParent : 09213E1C
					with(TestConvo) {
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 28831A44
						/// @DnDInput : 2
						/// @DnDParent : 0004CFE4
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_1" "TestDecisions"
						/// @DnDArgument : "var" "decisionsTrue"
						/// @DnDArgument : "var_1" "decisions"
						decisionsTrue = 1;
						decisions = TestDecisions;
					}}}}}}