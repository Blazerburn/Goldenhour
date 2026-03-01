/// @description Insert description here
// You can write your code in this editor
scale = 3;
dialogue_box = spr_textbox

draw_set_halign(fa_center);
draw_set_font(fnt_dialogue);

keyRight = ord("d");
keyLeft = ord("a");
keyUp = ord("w");
keyDown = ord("s");
keyInteract = vk_space;

textSelected = 0

code1 = 0
code2 = 0
code3 = 0
code4 = 0
code1Needed = 2
code2Needed = 5
code3Needed = 6
code4Needed = 2

boxHeight		= sprite_get_height(dialogue_box) * scale;
boxWidth		= sprite_get_width(dialogue_box) * scale;
gui_width		= display_get_gui_width();
gui_height		= display_get_gui_height();
gb_diff			= gui_width - boxWidth;
upSelectionColor = c_white;
downSelectionColor = c_white;

pos_x			= (gb_diff/2);
pos_y			= gui_height-boxHeight-4;

show_debug_message(pos_x);
show_debug_message(pos_y);