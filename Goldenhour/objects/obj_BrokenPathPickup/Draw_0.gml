

if(puzzleProgress == 0)
{
	draw_sprite_ext(BoxPressurePlate, 0, x+16, y-16, 1, 1, 270, c_white, 1);
}

if(puzzleProgress == 2)
{
	//draw_sprite(FixedPathTile, 0, x - 16, y - 16);
	//eate_instance_layer(x - 16, y -16, "Instances", obj_FixedPath);
	//eate_instance_layer(x - 16, y -16, "Player", obj_FixedPathDepth);
	pressurePlate = create_instance_layer(x+16, y -16, "Player", FixedPressurePlate);
	instance_destroy();
}

if(puzzleProgress < 2)
{
	draw_self();
}
