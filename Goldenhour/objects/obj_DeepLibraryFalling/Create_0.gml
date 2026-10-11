activation = 0;
colliding = 0;
collision = instance_create_layer(x, y+15, "Instances", TestWall);
with collision {
	image_yscale *= .8
}
instance_deactivate_object(collision)