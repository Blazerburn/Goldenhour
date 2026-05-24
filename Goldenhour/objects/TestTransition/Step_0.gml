/// @description Insert description here
// You can write your code in this editor
var xScale = image_xscale;
var yScale = image_yscale;

//show_debug_message(xScale);
//show_debug_message(yScale);
if (point_in_rectangle(TestPlayer.x, TestPlayer.y, x, y, x+32*xScale, y+32*yScale) || point_in_rectangle(TestPlayer.x, TestPlayer.y + 22, x, y, x+32*xScale, y+32*yScale)) {
	if(global.recentlyInteracted == 0)
	{
		global.Immobilize = 1;
		global.RoomSpawnpoints = playerSpawnpoint;
		fadeIn = true;
		
		if fadeIn = true {
			alpha += .05
			clamp(alpha, 0, 1)
			show_debug_message(alpha)
			if alpha = 1 {
				show_debug_message(alpha)
				show_debug_message("Transition")
				global.startPlayerDirection = playerDirection;
				global.Immobilize = 0;
				room_goto(goToRoom);
			}
		}
	}
}