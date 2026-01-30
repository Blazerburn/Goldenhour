if(global.recentlyInteracted == 0)
{
		global.recentlyInteracted = 20;
	
		with(TestPlayer1) {
			global.inventoryOpen = 1;
			global.usingItem = 1;
			global.Talking = 0;
			itemNeeded = itemFixedPath;
		}
	
		with(global.roomSong) {
			roomSongPosition = audio_sound_get_track_position(songID);
		
			show_debug_message(string(roomSongPosition));
		}
	
		instance_create_layer(0, 0, "Instances", InventoryMusicPlayer);
	
		instance_create_layer(0, 0, "Instances", FixedPathUsingQuipsOld);
	
		exit;
}