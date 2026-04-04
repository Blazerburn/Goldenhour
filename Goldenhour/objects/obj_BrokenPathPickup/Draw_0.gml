

if(puzzleProgress == 0)
{
	draw_sprite_ext(BoxPressurePlate, 0, x, y, 1, 1, 270, c_white, 1);
}

if(puzzleProgress == 2)
{
	//draw_sprite(FixedPathTile, 0, x - 16, y - 16);
	//eate_instance_layer(x - 16, y -16, "Instances", obj_FixedPath);
	//eate_instance_layer(x - 16, y -16, "Player", obj_FixedPathDepth);
	instance_create_layer(x, y, "Instances", obj_BoxPressurePlate, {
	image_angle: 90 });
	instance_deactivate_object(self);
}

if(puzzleProgress < 2)
{
	draw_self();
}
