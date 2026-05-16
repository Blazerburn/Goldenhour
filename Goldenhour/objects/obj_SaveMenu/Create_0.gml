/// @description Insert description here
// You can write your code in this editor
scale = 3;
boxHeight		= sprite_get_height(spr_textbox) * scale;
boxWidth		= sprite_get_width(spr_textbox) * scale;
gui_width		= display_get_gui_width();
gui_height		= display_get_gui_height();
gb_diff			= gui_width - boxWidth;

selected = 0;
buttonPressed = 0;
file1 = false;
file2 = false;
file3 = false;
saving = false;
fileSelected = 0;
global.menuOpen = true;
area1 = "None"
area2 = "None"
area3 = "None"
region1 = "None"
region2 = "None"
region3 = "None"
buttonA = 1;
buttonB = 0;
buttonC = 0;

