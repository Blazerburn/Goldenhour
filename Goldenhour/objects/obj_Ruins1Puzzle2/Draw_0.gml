

if(puzzleProgress == 0)
{
	draw_sprite(PushableBox, 0, x - 16, y - 16);
}

if(puzzleProgress == 1)
{
	instance_create_layer(x - 16, y - 16, "Instances", PushableObjectSpawner);
	instance_destroy(collision);
	instance_destroy();
}

