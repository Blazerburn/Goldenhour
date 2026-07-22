// Outside Castle
if room == StreetRoom1 or
	room == StreetRoom2 or
	room == StreetRoom3 or
	room == StreetRoom4 or
	room == PuzzleRoom5 or
	room == ParkRoom or
	room == AlleyBarRoom or
	room == AlleyUpRoomA or
	room == AlleyUpRoomB or
	room == AlleyDownRoomA or
	room == AlleyDownRoomB or
	room == AlleyLeftRoomA or
	room == AlleyLeftRoomB or
	room == AlleyRightRoomA {
		
		show_debug_message("Outside")
		
	if global.shiningCityPowered = 0 {
		alpha = .5
	}
	else if global.shiningCityPowered = 1 {
		alpha = .25
	}
}

// Inside Castle
if room == HideoutRoom1 or
	room == HideoutRoom2 or
	room == PrincesRoom1 or
	room == PrincesRoom2 or
	room == PrincesRoom3 or
	room == PrincesRoom4 or
	room == PrincesRoom5 or
	room == BarRoom {
		
		show_debug_message("Inside")
	if global.shiningCityPowered = 0 {
		alpha = .75
	}
	else if global.shiningCityPowered = 1 {
		alpha = .5
	}
}