/// @description Insert description here
// You can write your code in this editor



	// Ruins Outskirts
	if room == StarterRoom1
	or room == StarterRoom2
	or room == ShowRoom
	or room == PuzzleRoom1
	or room == PuzzleRoom2
	or room == ChurchRoom1
	or room == ChurchRoom2
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
		global.room = "Outskirts"
		global.region = "Shining Ruins"
	}
	
	if room == ChurchRoom1
	or room == ChurchRoom2
	{
		global.room = "Abandoned Church"
		global.region = "Shining Ruins"
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
	or room == PrincesRoom3
	or room == PrincesRoom4
	or room == PrincesRoom5
	or room == AlleyBarRoom
	or room == AlleyUpRoomA
	or room == AlleyUpRoomB
	or room == AlleyDownRoomA
	or room == AlleyDownRoomB
	or room == AlleyLeftRoomA
	or room == AlleyLeftRoomB
	or room == AlleyRightRoomA
	or room == CoreRoom
	{
		global.room = "Castle"
		global.region = "Shining Ruins"
	}