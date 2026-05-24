/*var l176BE8A8_0;
l176BE8A8_0 = keyboard_check_pressed(global.interactKey);
if (l176BE8A8_0)
{
	show_debug_message("ORANGE")
	if(global.Talking == 0)
	{
		if(global.inventoryOpen == 0)
		{
			if(global.recentlyInteracted == 0)
			{
				global.saveDirection = 2;
				global.saveSpawnpoint = spawnpoint;
				global.saveRoom = room
				global.saveDoor = image_index;
				global.RoomSpawnpoints = playerSpawnpoint;
				global.Immobilize = 1;
				global.recentlyInteracted = 60;
				alpha = 0;
				fadeIn = true;
			}
		}
	}
}