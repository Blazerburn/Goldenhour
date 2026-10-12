event_inherited(); //so it will inherit from par_speaker

if choice_variable = "Take" {
	if !global.princeDoorOpen = 2 {
		global.princeDoorOpen = 1;
	}
	instance_deactivate_object(obj_WoodenPlankPickup)
}



/*if global.Puzzle4SecondHalf = 1 {
	choice_variable = "Get"
	global.Puzzle4SecondHalf++
}


/*

Other code
codecodecode