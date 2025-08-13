/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 712AB948
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 09213E1C
	/// @DnDParent : 712AB948
	var l09213E1C_0;l09213E1C_0 = keyboard_check_pressed(vk_space);if (l09213E1C_0){	/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6FE0CA70
		/// @DnDParent : 09213E1C
		/// @DnDArgument : "objind" "TestInteractableTrue"
		/// @DnDSaveInfo : "objind" "TestInteractableTrue"
		instance_change(TestInteractableTrue, true);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
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
		}}}