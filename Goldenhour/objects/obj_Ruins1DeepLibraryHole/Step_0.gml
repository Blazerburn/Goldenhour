event_inherited(); //so it will inherit from par_speaker
show_debug_message(choice_variable)
if choice_variable = 2 {
	global.princeDoorOpen = 2;
	
}

if global.princeDoorOpen = 2 {
	//instance_activate_object(obj_DeepLibraryPlankHole)
	instance_create_layer(x, y, "Instances", obj_DeepLibraryPlankHole)
	instance_activate_layer("Collisions2")
	instance_deactivate_layer("Collisions3")
	with obj_DeepLibraryFalling {
		instance_deactivate_object(self)
	}
	instance_deactivate_object(self)
}

/*if(createWall = 0) {
var pathPushableWall = create_instance_layer(x, y, "Collisions", PushableWall);
createWall = 1;

show_debug_message(string("Push Wall:"));
show_debug_message(string(pathPushableWall));	
}
/*

Other code
codecodecode