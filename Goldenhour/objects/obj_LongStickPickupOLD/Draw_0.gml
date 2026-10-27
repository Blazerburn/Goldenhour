/// @description Insert description here
// You can write your code in this editor
if !(choice_variable == "Take") {
	draw_sprite(ChestClosed, -1, x, y);
	draw_self();
}
else {
	draw_sprite(ChestOpen, -1, x, y);
}