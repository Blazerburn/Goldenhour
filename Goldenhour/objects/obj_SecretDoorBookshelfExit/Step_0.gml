event_inherited(); //so it will inherit from par_speaker

update_layer();

if choice_variable = "Push" {
	global.libraryDoorOpen = 1;
	global.RoomSpawnpoints = 2;
	global.startPlayerDirection = 3;
	room_goto(PrincesRoom5)
	choice_variable = "Destory"
}

/*

Other code
codecodecode