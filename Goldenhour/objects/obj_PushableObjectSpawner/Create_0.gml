/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 60F5AE13
/// @DnDArgument : "var" "pushableObjectID"
/// @DnDArgument : "value" "0"
var pushableObjectID = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 71B99B48
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "pushableObjectID"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "PushableObject"
/// @DnDArgument : "layer" ""Box""
/// @DnDSaveInfo : "objectid" "PushableObject"
var pushableObjectID = instance_create_layer(x + 0, y + 0, "Box", PushableObject);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7A1DE4F4
/// @DnDArgument : "msg" "pushableObjectID"
show_debug_message(string(pushableObjectID));

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 0771B279
/// @DnDApplyTo : pushableObjectID
with(pushableObjectID) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C3F6371
	/// @DnDParent : 0771B279
	/// @DnDArgument : "expr" "pushableObjectID"
	/// @DnDArgument : "var" "objectID"
	objectID = pushableObjectID;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 61441A56
	/// @DnDParent : 0771B279
	/// @DnDArgument : "msg" "objectID"
	show_debug_message(string(objectID));
}