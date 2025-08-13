/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49D2DE70
/// @DnDArgument : "var" "global.plantObject"
/// @DnDArgument : "value" "1"
if(global.plantObject == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 57EE13AA
	/// @DnDApplyTo : inst_2E344679
	/// @DnDParent : 49D2DE70
	with(inst_2E344679) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 18057260
	/// @DnDParent : 49D2DE70
	instance_destroy();}