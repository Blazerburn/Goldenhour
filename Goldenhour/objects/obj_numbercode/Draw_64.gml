/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_textbox, -1, pos_x, pos_y, scale * 1.1, scale * .8, 0, c_white, 1);
draw_text_ext_colour(pos_x + 37, pos_y + textShift, (code1), 100, 1000, c_yellow, c_yellow, c_yellow, c_yellow, 1);
draw_text_ext_colour(pos_x + 79, pos_y + textShift, (code2), 100, 1000, c_aqua, c_aqua, c_aqua, c_aqua, 1);
draw_text_ext_colour(pos_x + 121, pos_y + textShift, (code3), 100, 1000, c_lime, c_lime, c_lime, c_lime, 1);
draw_text_ext_colour(pos_x + 163, pos_y + textShift, (code4), 100, 1000, c_red, c_red, c_red, c_red, 1);

global.Immobilize = 1
global.Talking = 1

var right;
right = keyboard_check_pressed(ord("D"));
if (right)
{
	if (textSelected < 3) {
	textSelected += 1;
	show_debug_message(textSelected);
	}
	else {
		textSelected = 0;
	}
	upSelectionColor = c_white;
	downSelectionColor = c_white;
}

var left;
left = keyboard_check_pressed(ord("A"));
if (left)
{
	if (textSelected > 0) {
	textSelected -= 1;
	show_debug_message(textSelected);
	}
	else {
		textSelected = 3;
	}
	upSelectionColor = c_white;
	downSelectionColor = c_white;
}

draw_sprite_ext(spr_uparrow, -1, pos_x + 40 + (42 * textSelected), pos_y + 40, .75, .75, 0, upSelectionColor, 1);
draw_sprite_ext(spr_downarrow, -1, pos_x + 40 + (42 * textSelected), pos_y + 110, .75, .75, 0, downSelectionColor, 1);

var up;
up = keyboard_check_pressed(ord("W"));
if (up)
{
	upSelectionColor = c_yellow;
	downSelectionColor = c_white;
	if (textSelected = 0) {
		if (code1 < 9) {
		code1 += 1;
		show_debug_message(code1);
		}
		else {
		code1 = 0;
		}
	}
	if (textSelected = 1) {
		if (code2 < 9) {
		code2 += 1;
		show_debug_message(code1);
		}
		else {
		code2 = 0;
		}
	}
	if (textSelected = 2) {
		if (code3 < 9) {
		code3 += 1;
		show_debug_message(code1);
		}
		else {
		code3 = 0;
		}
	}
	if (textSelected = 3) {
		if (code4 < 9) {
		code4 += 1;
		show_debug_message(code1);
		}
		else {
		code4 = 0;
		}
	}
}

var down;
down = keyboard_check_pressed(ord("S"));
if (down)
{
	upSelectionColor = c_white;
	downSelectionColor = c_yellow;
	if (textSelected = 0) {
		if (code1 > 0) {
		code1 -= 1;
		show_debug_message(code1);
		}
		else {
		code1 = 9;
		}
	}
	if (textSelected = 1) {
		if (code2 > 0) {
		code2 -= 1;
		show_debug_message(code1);
		}
		else {
		code2 = 9;
		}
	}
	if (textSelected = 2) {
		if (code3 > 0) {
		code3 -= 1;
		show_debug_message(code1);
		}
		else {
		code3 = 9;
		}
	}
	if (textSelected = 3) {
		if (code4 > 0) {
		code4 -= 1;
		show_debug_message(code1);
		}
		else {
		code4 = 9;
		}
	}
}

//show_debug_message(puzzleObject);
var progress = puzzleObjectProgress

var interact;
interact = keyboard_check_pressed(vk_space);
if (interact) {
	if (code1 = code1Needed && code2 = code2Needed && code3 = code3Needed && code4 = code4Needed) {
		show_debug_message("correct code");
		global.Immobilize = 0;
		global.Talking = 0;
		
		//instance_create_layer(x - 16, y - 16, "Instances", puzzleObject);
		with (puzzleObject) {
			puzzleProgress = progress;
		}
		instance_destroy();
	}
}


var tab;
tab = keyboard_check_pressed(vk_tab);
if (tab)
{
	global.Immobilize = 0;
	global.Talking = 0;
	instance_destroy();
}