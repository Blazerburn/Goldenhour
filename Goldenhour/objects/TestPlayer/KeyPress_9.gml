if(global.inventoryOpen == 0)
{
	if(global.Talking == 0)
	{
		
			set_song_ingame(sng_inventoryBeginning, 15, 0)
	
			global.inventoryOpen = 1;
			global.shiftText = 1;
	
			global.Immobilize = 1;
	
			show_debug_message(string(itemArray));
	}
}

else
{
	if(global.combining == 0)
	{
		if(global.selectionOpen == 0)
		{
			if(global.Talking == 0)
			{
				if(global.infoOpen == 0)
				{
					global.inventoryOpen = 0;
					reset_room_song()
					global.Immobilize = 0;
					global.usingItem = 0;
				}
							else
				{
					global.infoOpen = 0;
				}
			}
		}
			else
		{
			global.selectionOpen = 0;
		}
	}
		else
	{
		global.combining = 0;
		
		itemCombineSelect1 = 0;
		itemCombineSelect2 = 0;
		itemCombinePos1 = 0;
		itemCombinePos2 = 0;
		itemCombineType1 = 0;
		itemCombineType2 = 0;
	}
}