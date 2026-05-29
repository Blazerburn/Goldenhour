/// @description Insert description here
// You can write your code in this editor
draw_self()

if (puzzleProgress == 1) {
	create_textevent(
	["A clicking sound eminates from the lock as you enter the correct code", 
	"You pull the lock off of the trapdoor and lift it open"],
	-1,
	-1,
	-1,
	-1,
	-1,
	[[change_variable, id, "puzzleProgress", 3], [0]],
	-1,
	-1,
	-1,
);
puzzleProgress = 2;
}

if puzzleProgress = 3 {
	sprite_index = spr_TrapdoorOpening
	if round(image_index) >= 15 {
		puzzleProgress = 4;
		show_debug_message(puzzleProgress)
	}
	show_debug_message(image_index)
}

if (puzzleProgress == 4) {
	show_debug_message("Code correct")
	var trapdoor = 0
	trapdoor = instance_create_layer(x - 16, y - 16, "Instances", TestInteractTransition);
	instance_create_layer(x, y, "Instances", obj_trapdoor);
	with (trapdoor) {
		skipTransition = true;
		goToRoom = HideoutRoom2;
		playerSpawnpoint = 1;
		playerDirection = 2;
	}
	instance_deactivate_object(self);
}