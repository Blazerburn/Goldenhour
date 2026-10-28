event_inherited(); //so it will inherit from par_speaker

update_layer();

if choice_variable = "Push" {
	global.libraryDoorOpen = 1;
	global.RoomSpawnpoints = 2;
	global.startPlayerDirection = 3;
	active = false
	choice_variable = "Destory"
	room_goto(PrincesRoom5)
	
}
else if choice_variable = "Destroy" {
	active = false
	instance_deactivate_object(self)
}

/*

Other code
codecodecode