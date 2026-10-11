event_inherited(); //so it will inherit from par_speaker

if choice_variable = 2 {
	instance_activate_object(obj_DeepLibraryPlankHole)
	instance_activate_layer("Collisions2")
	with obj_DeepLibraryFalling {
		instance_deactivate_object(collision)
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