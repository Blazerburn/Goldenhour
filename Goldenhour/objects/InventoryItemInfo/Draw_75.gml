/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 51110233
/// @DnDArgument : "xscale" "4.95"
/// @DnDArgument : "yscale" "4.95"
/// @DnDArgument : "sprite" "InventorySquare"
/// @DnDSaveInfo : "sprite" "InventorySquare"
draw_sprite_ext(InventorySquare, 0, 0, 0, 4.95, 4.95, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 36B3DB26
/// @DnDArgument : "x" "100"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "xscale" "4"
/// @DnDArgument : "yscale" "4"
/// @DnDArgument : "sprite" "InventorySquare"
/// @DnDSaveInfo : "sprite" "InventorySquare"
draw_sprite_ext(InventorySquare, 0, 100, 100, 4, 4, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0151EAFA
/// @DnDArgument : "font" "NormalFont"
/// @DnDSaveInfo : "font" "NormalFont"
draw_set_font(NormalFont);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0680D472
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 70B19BB8
/// @DnDArgument : "x" "500"
/// @DnDArgument : "y" "125"
/// @DnDArgument : "xscale" "1.5"
/// @DnDArgument : "yscale" "1.5"
/// @DnDArgument : "caption" "itemName"
draw_text_transformed(500, 125, string(itemName) + "", 1.5, 1.5, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 07FB1B15
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7A334D23
/// @DnDArgument : "x" "140"
/// @DnDArgument : "y" "250"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" "itemDescriptionLine1"
draw_text_transformed(140, 250, string(itemDescriptionLine1) + "", .75, .75, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5A438B18
/// @DnDArgument : "x" "140"
/// @DnDArgument : "y" "300"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" "itemDescriptionLine2"
draw_text_transformed(140, 300, string(itemDescriptionLine2) + "", .75, .75, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 00F3A670
/// @DnDArgument : "x" "140"
/// @DnDArgument : "y" "350"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" "itemDescriptionLine3"
draw_text_transformed(140, 350, string(itemDescriptionLine3) + "", .75, .75, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 725D24FE
/// @DnDArgument : "x" "140"
/// @DnDArgument : "y" "400"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" "itemDescriptionLine4"
draw_text_transformed(140, 400, string(itemDescriptionLine4) + "", .75, .75, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 11191716
/// @DnDArgument : "x" "140"
/// @DnDArgument : "y" "450"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" "itemDescriptionLine5"
draw_text_transformed(140, 450, string(itemDescriptionLine5) + "", .75, .75, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 764B2CF8
/// @DnDArgument : "x" "140"
/// @DnDArgument : "y" "500"
/// @DnDArgument : "xscale" ".75"
/// @DnDArgument : "yscale" ".75"
/// @DnDArgument : "caption" "itemDescriptionLine6"
draw_text_transformed(140, 500, string(itemDescriptionLine6) + "", .75, .75, 0);