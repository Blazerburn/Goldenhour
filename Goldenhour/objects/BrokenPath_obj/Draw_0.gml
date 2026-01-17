/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F0E3AC7
/// @DnDArgument : "var" "objectInteracted"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(objectInteracted < 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 68DF8E82
	/// @DnDParent : 4F0E3AC7
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "BrokenPathTile"
	/// @DnDSaveInfo : "sprite" "BrokenPathTile"
	draw_sprite(BrokenPathTile, 0, x + 0, y + 0);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0847D006
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28B187C2
	/// @DnDParent : 0847D006
	/// @DnDArgument : "var" "objectInteracted"
	/// @DnDArgument : "value" "2"
	if(objectInteracted == 2){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 736EC090
		/// @DnDParent : 28B187C2
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "FixedPathTile"
		/// @DnDSaveInfo : "sprite" "FixedPathTile"
		draw_sprite(FixedPathTile, 0, x + 0, y + 0);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00518032
/// @DnDArgument : "var" "spriteActive"
if(spriteActive == 0){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 63DB0928
	/// @DnDParent : 00518032
	draw_self();}