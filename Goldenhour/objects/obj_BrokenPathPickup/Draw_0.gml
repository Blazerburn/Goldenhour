

if(puzzleProgress == 0)
{
	draw_sprite(BrokenPathTile, 0, x -16, y - 16);
}

if(puzzleProgress == 2)
{
	//draw_sprite(FixedPathTile, 0, x - 16, y - 16);
	create_instance_layer(x - 16, y -16, "Instances", obj_FixedPath);
	create_instance_layer(x - 16, y -16, "Player", obj_FixedPathDepth);
	with(pathPushableWall) instance_destroy();
	instance_destroy();
}

if(puzzleProgress < 2)
{
	draw_self();
}
