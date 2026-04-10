// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_song_ingame(_song, _fadeOutCurrentSong = 0, _fadeIn = 0, _loopPos = 0){
	// _song = set song, including "noone" to stop or fade the track out)
	
	with (obj_MusicPlayer) {
		targetSongAsset = _song;
		endFadeOutTime = _fadeOutCurrentSong;
		startFadeInTime = _fadeIn;
		loopPosition = _loopPos
	}
}

function reset_room_song() {
	// Rooms with no song
	if room == StarterRoom1
	or room == StarterRoom2
	or room == CoreRoom

	{
		set_song_ingame(noone, 60, 30)
	}

	// Ruins Outskirts
	if room == ShowRoom
	or room == PuzzleRoom1
	or room == PuzzleRoom2
	or room == PuzzleRoom3
	or room == Crossroads1
	or room == StatueRoom
	or room == PuzzleRoom4
	or room == RubbleRoom
	or room == CastleEntrance
	or room == CastleExit
	or room == PuzzleRoom6
	or room == JamboRoom
	{
		// If the city is not powered, play the dark theme
		if global.shiningCityPowered = 0 {
			set_song_ingame(sng_RuinsOutskirts, 120, 60)
		}
		else // If the city is powered play the light theme
		{
			set_song_ingame(sng_RuinsLight, 120, 60)
		}
	}


	// Ruins Church
	if room == ChurchRoom1
	or room == ChurchRoom2
	{
		set_song_ingame(sng_EmptyChurch, 60, 60)
	}

	// Ruins Castle
	if room == StreetRoom1
	or room == StreetRoom2
	or room == StreetRoom3
	or room == StreetRoom4
	or room == PuzzleRoom5
	or room == HideoutRoom1
	or room == HideoutRoom2
	or room == BarRoom
	or room == ParkRoom
	or room == PrincesRoom1
	or room == PrincesRoom2
	{
		// If the city is not powered, play the dark theme
		if global.shiningCityPowered = 0 {
			set_song_ingame(sng_RuinsDark, 120, 60)
		}
		else // If the city is powered play the light theme
		{
			set_song_ingame(sng_RuinsLight, 120, 60)
		}
	}
}