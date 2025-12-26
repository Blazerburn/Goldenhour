/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B256574
/// @DnDArgument : "var" "global.gate4Open"
/// @DnDArgument : "value" "1"
if(global.gate4Open == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 69DBF4E0
	/// @DnDApplyTo : gateCollision
	/// @DnDParent : 7B256574
	with(gateCollision) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7C6C930D
	/// @DnDParent : 7B256574
	instance_destroy();}