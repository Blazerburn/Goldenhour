/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 746F0010
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "3"
/// @DnDArgument : "yscale" "3"
/// @DnDArgument : "sprite" "TextBox"
/// @DnDSaveInfo : "sprite" "TextBox"
draw_sprite_ext(TextBox, 0, x + 100, y + 100, 3, 3, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1F7B3D35
/// @DnDArgument : "font" "NormalFont"
/// @DnDSaveInfo : "font" "NormalFont"
draw_set_font(NormalFont);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 6841EE0B
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5F450814
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1D1634A3
/// @DnDArgument : "x" "140"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "118 + (55 * textCurrent)"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text1"
draw_text_transformed(x + 140, y + 118 + (55 * textCurrent), "" + string(text1), .75, .75, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 6F4B7CF8
/// @DnDArgument : "x" "140"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "118 + (55 * 1)"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text2"
draw_text_transformed(x + 140, y + 118 + (55 * 1), "" + string(text2), .75, .75, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2302B1D0
/// @DnDArgument : "x" "140"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "118 + (55 * 2)"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text3"
draw_text_transformed(x + 140, y + 118 + (55 * 2), "" + string(text3), .75, .75, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 13391225
/// @DnDArgument : "key" "ord("W")"
/// @DnDArgument : "not" "1"
var l13391225_0;l13391225_0 = keyboard_check_released(ord("W"));if (!l13391225_0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4063BD26
	/// @DnDParent : 13391225
	/// @DnDArgument : "x" "80"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "90 + (55 * textSelected)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1.5"
	/// @DnDArgument : "yscale" "1.5"
	/// @DnDArgument : "sprite" "Arrow"
	/// @DnDSaveInfo : "sprite" "Arrow"
	draw_sprite_ext(Arrow, 0, x + 80, y + 90 + (55 * textSelected), 1.5, 1.5, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1E1FABE3
/// @DnDArgument : "key" "ord("S")"
/// @DnDArgument : "not" "1"
var l1E1FABE3_0;l1E1FABE3_0 = keyboard_check(ord("S"));if (!l1E1FABE3_0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 172E29D7
	/// @DnDParent : 1E1FABE3
	/// @DnDArgument : "x" "80"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "90 + (55 * textSelected)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1.5"
	/// @DnDArgument : "yscale" "1.5"
	/// @DnDArgument : "sprite" "Arrow"
	/// @DnDSaveInfo : "sprite" "Arrow"
	draw_sprite_ext(Arrow, 0, x + 80, y + 90 + (55 * textSelected), 1.5, 1.5, 0, $FFFFFF & $ffffff, 1);}