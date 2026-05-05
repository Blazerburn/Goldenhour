// Save the state of the room we are leaving
instance_activate_all();
if skipRoomSave == false {
	save_room();
	}
skipRoomSave = false;