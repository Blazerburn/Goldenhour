if(global.inventoryOpen == 0)
{
	if(global.Talking == 0)
{
	if(global.roomSong != undefined)
{
	with(global.roomSong) {
				roomSongPosition = audio_sound_get_track_position(songID);
			
				show_debug_message(string(roomSongPosition));
			}
}
	
		instance_create_layer(0, 0, "Instances", InventoryMusicPlayer);
	
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
				
					with(InventoryMusicPlayer) instance_destroy();
					
					with(global.roomSong) {
						event_user(0);
					
						show_debug_message(string("Restarted room song"));
					}
				
					global.Immobilize = 0;
					global.usingItem = 0;
}
			
				else
{
	global.infoOpen = 0;
				
					with(InventoryItemInfo1) instance_destroy();
}
}
}
	
		else
{
	global.selectionOpen = 0;
		
			with(TestInventoryDecisions) instance_destroy();
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