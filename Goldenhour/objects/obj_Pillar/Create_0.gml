update_layer()

collision = instance_create_layer(x-8, y+8, "Collisions", TestWall)

with collision {
	image_xscale *= .25
	image_yscale *= .25
}