/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1420E0A7
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 174C05A4
/// @DnDArgument : "font" "NormalFont"
/// @DnDSaveInfo : "font" "NormalFont"
draw_set_font(NormalFont);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 078FBB4F
/// @DnDArgument : "x" "500"
/// @DnDArgument : "y" "45"
/// @DnDArgument : "caption" "itemTitle"
draw_text_transformed(500, 45, string(itemTitle) + "", 1, 1, 0);