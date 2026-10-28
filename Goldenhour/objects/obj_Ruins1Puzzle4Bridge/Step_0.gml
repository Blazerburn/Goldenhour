event_inherited(); //so it will inherit from par_speaker

var dr = 24;
if (global.Talking = 0) {
	if instance_exists(obj_PushableObject) {
if(point_in_rectangle(obj_PushableObject.x+16, obj_PushableObject.y+16, x-dr, y-dr, x+dr, y+dr)){
	global.keepPushing = 1;
	with (par_speaker) {
		playerobject = obj_PushableObject;
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
	if skip = 0 {
		global.pushingBox = 0;
		global.playerAnimating = 0;
		PlayerCamera.player = true;
		with (par_speaker) {
			playerobject = TestPlayer;
		}
		with (obj_PushableObject) {
			instance_destroy(pushBoxCollision);
			//instance_destroy(pathCollision);
		}
		instance_destroy(star)
		instance_destroy(obj_PushableObject);
		instance_destroy(collision);
		instance_destroy(pushCollision);
		instance_activate_object(obj_Ruins1Puzzle4PressurePlate)
		with (obj_Ruins1Puzzle4PressurePlate) {
			puzzleProgress = 0;
		}
		global.Puzzle4SecondHalf = 1
		choice_variable = "Push";
		puzzleProgress = 2;
		skip = 1 
	}
}
if puzzleProgress = 2 {
	if skip = 0 {
		global.pushingBox = 0;
		global.playerAnimating = 0;
		PlayerCamera.player = true;
		with (par_speaker) {
			playerobject = TestPlayer;
		}
		with (obj_PushableObject) {
			instance_destroy(pushBoxCollision);
			//instance_destroy(pathCollision);
		}
		instance_destroy(star)
		instance_destroy(obj_PushableObject);
		instance_destroy(collision);
		instance_destroy(pushCollision);
		instance_activate_object(obj_Ruins1Puzzle4PressurePlate)
		global.Puzzle4SecondHalf = 1
		choice_variable = "Push";
		skip = 1 
	}
	
	
	
	
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