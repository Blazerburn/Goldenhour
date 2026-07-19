if StreetRoom1 or
	StreetRoom2 or
	StreetRoom3 or
	StreetRoom4 or
	PuzzleRoom5 or
	ParkRoom or
	AlleyBarRoom or
	AlleyUpRoomA or
	AlleyUpRoomB or
	AlleyDownRoomA or
	AlleyDownRoomB or
	AlleyLeftRoomA or
	AlleyLeftRoomB or
	AlleyRightRoomA {
	if global.shiningCityPowered = 0 {
		alpha = .25
	}
	else if global.shiningCityPowered = 1 {
		alpha = 0
	}
}