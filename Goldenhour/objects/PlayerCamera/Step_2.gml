if player = true {
	x = (TestPlayer.x)
	y = (TestPlayer.y)
}
else if player = false {
	if moving = true {
		if !(newX < x+2 and newX > x-2) {
			if newX > x {
				x+=2
			}
			else if newX < x {
				x-=2
			}
		}
		if !(newY < y+2 and newY > y-2) {
			if newY > y {
				y+=2
			}
			else if newY < y {
				y-=2
			}
		}
		//clamp(x, 0, newX)
		//clamp(y, 0, newY)
		//show_debug_message(x)
		//show_debug_message(y)

		if (newX < x+2 and newX > x-2) and (newY < y+2 and newY > y-2) {
			moving = false
		}
	}
}