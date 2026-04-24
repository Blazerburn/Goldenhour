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
settingsOpen = "Closed";
adjustingVolume = "False";
controlsOpen = "Closed";

buttonA = 1;
buttonB = 0;
buttonC = 0;

