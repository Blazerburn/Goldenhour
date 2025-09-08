/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 01BCBAD5
/// @DnDArgument : "y" "700"
/// @DnDArgument : "xscale" "15.6"
/// @DnDArgument : "yscale" "4"
/// @DnDArgument : "sprite" "TextBox"
/// @DnDSaveInfo : "sprite" "TextBox"
draw_sprite_ext(TextBox, 0, 0, 700, 15.6, 4, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2A113A9D
/// @DnDArgument : "font" "NormalFont"
/// @DnDSaveInfo : "font" "NormalFont"
draw_set_font(NormalFont);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 632DD802
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 419EDC92
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 69F38988
/// @DnDArgument : "x" "100"
/// @DnDArgument : "y" "725 + (75 * textCurrent)"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text1"
draw_text_transformed(100, 725 + (75 * textCurrent), "" + string(text1), 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 66B5F945
/// @DnDArgument : "x" "100"
/// @DnDArgument : "y" "725 + (75 * 1)"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text2"
draw_text_transformed(100, 725 + (75 * 1), "" + string(text2), 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 445ACC7D
/// @DnDArgument : "x" "textX"
/// @DnDArgument : "y" "725 + (75 * 2)"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text3"
draw_text_transformed(textX, 725 + (75 * 2), "" + string(text3), 1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 1D253597
/// @DnDArgument : "key" "ord("W")"
/// @DnDArgument : "not" "1"
var l1D253597_0;l1D253597_0 = keyboard_check_released(ord("W"));if (!l1D253597_0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 00FAB1B2
	/// @DnDParent : 1D253597
	/// @DnDArgument : "y" "690 + (75 * textSelected)"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "sprite" "Arrow"
	/// @DnDSaveInfo : "sprite" "Arrow"
	draw_sprite_ext(Arrow, 0, 0, 690 + (75 * textSelected), 2, 2, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4042406F
/// @DnDArgument : "key" "ord("S")"
/// @DnDArgument : "not" "1"
var l4042406F_0;l4042406F_0 = keyboard_check(ord("S"));if (!l4042406F_0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 77F01A75
	/// @DnDParent : 4042406F
	/// @DnDArgument : "y" "690 + (75 * textSelected)"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "sprite" "Arrow"
	/// @DnDSaveInfo : "sprite" "Arrow"
	draw_sprite_ext(Arrow, 0, 0, 690 + (75 * textSelected), 2, 2, 0, $FFFFFF & $ffffff, 1);}