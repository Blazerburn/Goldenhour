event_inherited(); //so it will inherit from par_speaker

var dr = 24;
if (global.Talking = 0) {
	if instance_exists(PushableObject) {
if(point_in_rectangle(PushableObject.x+16, PushableObject.y+16, x-dr, y-dr, x+dr, y+dr)){
	global.keepPushing = 1;
	with (par_speaker) {
		playerobject = PushableObject;
	}
	choice_variable = -1;
}
else {
	with (par_speaker) {
		playerobject = TestPlayer;
	}
	choice_variable = "Alone";
	global.keepPushing = 0;
}
}
}

if (puzzleProgress = 1) {
	global.pushingBox = 0;
	global.playerAnimating = 0;
	with (par_speaker) {
		playerobject = TestPlayer;
	}
	with (PushableObject) {
		instance_destroy(pushBoxCollision);
		instance_destroy(pathCollision);
	}
	instance_destroy(PushableObject);
	instance_destroy(collision);
	instance_destroy(pushCollision);
	choice_variable = "Push";
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