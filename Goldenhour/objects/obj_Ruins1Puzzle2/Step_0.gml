event_inherited(); //so it will inherit from par_speaker

update_layer()

if(puzzleProgress == 1)
{
	if !(instance_exists(obj_PushableObject)) {
	instance_create_layer(x - 16, y - 16, "Instances", obj_PushableObjectSpawner);
	}
	//image_index = 1;
	instance_deactivate_object(twinkle)
	instance_deactivate_object(collision);
	//instance_activate_object(obj_NetBox);
	obj_NetBox.puzzleProgress = 1;
	obj_NetBox.image_index = 1;
	obj_NetBox.depth = 1500;
	instance_deactivate_object(self);
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