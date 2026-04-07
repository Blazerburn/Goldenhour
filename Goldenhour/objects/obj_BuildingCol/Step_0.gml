/// @description Insert description here
// You can write your code in this editor

if (rectangle_in_rectangle(TestPlayer.x - 8, TestPlayer.y + 16, TestPlayer.x + 8, TestPlayer.y + 24, 
x, y, x + xValue, y + yValue) or rectangle_in_rectangle(TestPlayer.x - 8, TestPlayer.y + 16, TestPlayer.x + 8, TestPlayer.y + 24, 
x + xValue2, y + yValue2, x + xValue3, y + yValue3)) { global.inside_lay_alpha -= 0.05; 
	global.outside_lay_alpha += 0.05; 
	//show_debug_message("Inside building");
	}
else { global.inside_lay_alpha += 0.05; 
	global.outside_lay_alpha -= 0.05; 
	//show_debug_message("Outside Building");
	}
global.inside_lay_alpha = clamp(global.inside_lay_alpha, 0.15, 1);
global.outside_lay_alpha = clamp(global.outside_lay_alpha, 0, 1);
//show_debug_message(global.inside_lay_alpha);
//show_debug_message(global.outside_lay_alpha);

