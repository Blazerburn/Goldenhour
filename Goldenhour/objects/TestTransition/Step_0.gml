/// @description Insert description here
// You can write your code in this editor
var xScale = image_xscale;
var yScale = image_yscale;

show_debug_message(xScale);
show_debug_message(yScale);
if (point_in_rectangle(TestPlayer.x, TestPlayer.y, x, y, x+32*xScale, y+32*yScale) || point_in_rectangle(TestPlayer.x, TestPlayer.y + 22, x, y, x+32*xScale, y+32*yScale)) {
if(global.recentlyInteracted == 0)
{
	global.startPlayerDirection = playerDirection;

	global.RoomSpawnpoints = playerSpawnpoint;

	//global.recentlyInteracted = 0;

	room_goto(goToRoom);
}
}