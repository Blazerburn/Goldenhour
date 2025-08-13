/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5AEA5774
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 59F3BD94
	/// @DnDParent : 5AEA5774
	var l59F3BD94_0;l59F3BD94_0 = keyboard_check_pressed(vk_space);if (l59F3BD94_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 398B84F2
		/// @DnDParent : 59F3BD94
		/// @DnDArgument : "objectid" "TestDecisions_1"
		/// @DnDSaveInfo : "objectid" "TestDecisions_1"
		instance_create_layer(0, 0, "Instances", TestDecisions_1);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0CF9C3D9
		/// @DnDParent : 59F3BD94
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;}}