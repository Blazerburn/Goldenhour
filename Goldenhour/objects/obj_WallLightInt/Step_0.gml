event_inherited(); //so it will inherit from par_speaker

if global.shiningCityPowered = 0 {
	if global.castleLight = 1 {
		instance_deactivate_object(self)
	}
	else if puzzleProgress = 1 {
		if global.castleLight = 0 {
			global.castleLight = 1
		}
		else if global.castleLight = 1 {
			instance_deactivate_object(self)
		}
		
	}
}
else if global.shiningCityPowered = 1 {
	if global.castleLight = 1 {
		if puzzleProgress = 1 {
			instance_activate_object(self)
		}
		else if puzzleProgress = 2 {
			if global.castleLight = 1 {
				global.castleLight = 2
			}
			instance_deactivate_object(self)
		}
	}
	else if global.castleLight = 2 {
		instance_deactivate_object(self)
	}
}

/*

Other code
codecodecode