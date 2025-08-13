/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 55683B09
/// @DnDArgument : "font" "NormalFont"
/// @DnDSaveInfo : "font" "NormalFont"
draw_set_font(NormalFont);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 6C039460
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0D277158
/// @DnDArgument : "x" "125"
/// @DnDArgument : "y" "932"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" ""Select which other item you would like to combine""
draw_text_transformed(125, 932, string("Select which other item you would like to combine") + "", .75, .75, 0);