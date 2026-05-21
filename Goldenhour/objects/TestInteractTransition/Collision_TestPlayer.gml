var l176BE8A8_0;
l176BE8A8_0 = keyboard_check_pressed(global.interactKey);
if (l176BE8A8_0)
{
	if(global.Talking == 0)
	{
		if(global.inventoryOpen == 0)
		{
			if(global.recentlyInteracted == 0)
			{
				global.RoomSpawnpoints = playerSpawnpoint;
				global.Immobilize = 1;
				global.recentlyInteracted = 60;
				alpha = 0;
				fadeIn = true;
			}
		}
	}
}