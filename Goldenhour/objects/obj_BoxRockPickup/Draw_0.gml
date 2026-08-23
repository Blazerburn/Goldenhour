/// @description Insert description here
// You can write your code in this editor

if !(choice_variable == "Take" or choice_variable == "Take2") {
	draw_sprite(spr_StoneCrateSmol, -1, x, y)
	if !global.Puzzle4SecondHalf = 0 {
	draw_self()
	}
}
else {
	instance_destroy(collision)
}
