

if(puzzleProgress == 0)
{
	draw_self()
}

if(puzzleProgress == 2)
{
	//draw_sprite(FixedPathTile, 0, x - 16, y - 16);
	//eate_instance_layer(x - 16, y -16, "Instances", obj_FixedPath);
	//eate_instance_layer(x - 16, y -16, "Player", obj_FixedPathDepth);
	instance_create_layer(x, y, "Instances", obj_BoxPressurePlate, {
	sprite_index: PressurePlateFixed });
	instance_deactivate_object(self);
}


