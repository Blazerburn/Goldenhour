

if(puzzleProgress == 0)
{
	draw_sprite(PushBox, 0, x - 16, y - 16);
	draw_self();
}

if(puzzleProgress == 1)
{
	if !(instance_exists(PushableObject)) {
	instance_create_layer(x - 16, y - 16, "Instances", obj_PushableObjectSpawner);
	}
	instance_deactivate_object(collision);
	instance_deactivate_object(self);
}

