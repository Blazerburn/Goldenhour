event_inherited(); //so it will inherit from par_speaker

if choice_variable = "Leave" {
global.Puzzle4SecondHalf = 1
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