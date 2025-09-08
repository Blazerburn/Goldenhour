/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 263272EE
/// @DnDArgument : "var" "global.Talking"
/// @DnDArgument : "value" "1"
if(global.Talking == 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 17EB7D4C
	/// @DnDParent : 263272EE
	/// @DnDArgument : "y" "700"
	/// @DnDArgument : "xscale" "15.6"
	/// @DnDArgument : "yscale" "4"
	/// @DnDArgument : "sprite" "TextBox"
	/// @DnDSaveInfo : "sprite" "TextBox"
	draw_sprite_ext(TextBox, 0, 0, 700, 15.6, 4, 0, $FFFFFF & $ffffff, 1);}