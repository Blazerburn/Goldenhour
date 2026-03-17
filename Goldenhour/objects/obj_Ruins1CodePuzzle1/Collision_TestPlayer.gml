event_inherited();

var l176BE8A8_0;
l176BE8A8_0 = keyboard_check_pressed(vk_space);
if (l176BE8A8_0)
{
	if(global.recentlyInteracted == 0)
{
	if(puzzleProgress == 0) {
		var numberCode;
		numberCode = instance_create_layer(x, y, "Instances", obj_numbercode);
		with (numberCode) {
			code1Needed = 3;
			code2Needed = 6;
			code3Needed = 5;
			code4Needed = 2;
		}
	}
	
	if(puzzleProgress == 1) {
	global.startPlayerDirection = playerDirection;
	
		global.RoomSpawnpoints = playerSpawnpoint;
	
		global.recentlyInteracted = 60;
	
		show_debug_message(string(global.recentlyInteracted));
	
		room_goto(goToRoom);
	}
}
}