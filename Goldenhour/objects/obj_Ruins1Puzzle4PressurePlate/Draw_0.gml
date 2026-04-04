if (puzzleProgress == -1) {
	instance_deactivate_object(self)
}

if(puzzleProgress == 0)
{
	draw_self()
}

if(puzzleProgress == 1)
{
	global.pressurePlatesActive = 1;
	/*var collision = instance_create_layer(x - 16, y - 16, "Instances", TestWall);
	with(collision) {
		image_xscale = .49;
		image_yscale = .49;
	}*/
	instance_deactivate_object(obj_Ruins1Puzzle4Gate);
}

