/// @description Insert description here
// You can write your code in this editor

if !(choice_variable == "Take" or choice_variable == "Take2") {
	draw_sprite(spr_StoneCratePickup, 0, x, y)
	/*if !global.Puzzle4SecondHalf = 0 {
	draw_self()
	}*/
}
else {
	draw_sprite(spr_StoneCratePickup, 1, x, y)
	//instance_destroy(collision)
}
