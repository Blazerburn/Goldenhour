gateCollision = 0;
gateOpen = false;
gateCollision = instance_create_layer(x-8, y+16, "Instances", TestWall);
activation = 0;
playedSound = 0;
opened = 0;
int = instance_create_layer(x, y+16, "Instances", obj_GateInt)