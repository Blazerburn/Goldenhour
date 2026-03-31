event_inherited(); //so it will inherit from par_speaker


if (puzzleProgress == 1) {
	create_textevent(
	["A clicking sound eminates from the lock as you enter the correct code", 
	"You pull the lock off of the trapdoor and lift it open", 
	"A ladder leads down to a small room"],
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
);
var trapdoor = 0
trapdoor = instance_create_layer(x - 16, y - 16, "Instances", TestInteractTransition);
with (trapdoor) {
	goToRoom = HideoutRoom2;
	playerSpawnpoint = 1;
	playerDirection = 2;
}
instance_destroy();
}


