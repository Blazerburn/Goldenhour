var _doorObject = instance_nearest(x, y, obj_interactableDoor)


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
				with _doorObject {
					var _frame = image_index
					
					sprite_index = spr_RoomDoorOpening
					
					image_index = _frame
				}
				global.RoomSpawnpoints = playerSpawnpoint;
				global.Immobilize = 1;
				global.recentlyInteracted = 60;
				alpha = 0;
				fadeIn = true;
			}
		}
	}
}