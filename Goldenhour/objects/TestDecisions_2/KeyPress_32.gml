/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F2888EF
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7752EAC6
	/// @DnDParent : 6F2888EF
	/// @DnDArgument : "var" "textSelected"
	if(textSelected == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 47FBAF0C
		/// @DnDParent : 7752EAC6
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1B101BC6
		/// @DnDApplyTo : inst_392ACFBC
		/// @DnDParent : 7752EAC6
		with(inst_392ACFBC) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 34129EC2
		/// @DnDApplyTo : inst_2E344679
		/// @DnDParent : 7752EAC6
		with(inst_2E344679) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 041F3551
		/// @DnDParent : 7752EAC6
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.plantObject"
		global.plantObject = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0E9936AA
		/// @DnDInput : 2
		/// @DnDParent : 7752EAC6
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 60EFBF98
		/// @DnDParent : 7752EAC6
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 207B2CD2
		/// @DnDParent : 7752EAC6
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14DE6B94
	/// @DnDParent : 6F2888EF
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "1"
	if(textSelected == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 24F9F64F
		/// @DnDParent : 14DE6B94
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0F27A45D
		/// @DnDInput : 2
		/// @DnDParent : 14DE6B94
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7E5C43B9
		/// @DnDParent : 14DE6B94
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 3A928202
		/// @DnDParent : 14DE6B94
		exit;}}