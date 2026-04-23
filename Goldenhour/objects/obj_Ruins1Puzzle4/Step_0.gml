event_inherited(); //so it will inherit from par_speaker


if (puzzleProgress = 2){
	BreakablePathWall.image_index = 1
	instance_deactivate_object(self);
	instance_destroy(pushCollision);
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