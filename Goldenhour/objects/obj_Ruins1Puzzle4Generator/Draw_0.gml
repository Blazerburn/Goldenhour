

if(puzzleProgress == 0)
{
	draw_sprite(PushableBox, 0, x + 0, y + 0);
}

if(puzzleProgress == 1)
{
	instance_create_layer(x + 0, y + 0, "Instances", PushableObjectSpawner);
	instance_destroy(collision);
	instance_destroy();
}

