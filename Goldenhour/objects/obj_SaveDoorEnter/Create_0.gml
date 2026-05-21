goToRoom = InfiniteRoom;
playerSpawnpoint = 2;
playerDirection = 0;
fadeIn = false;
fadeOut = false;
alpha = 0;
spawnpoint = 0;

if !instance_exists(obj_FadeTransition) {
	instance_create_layer(x, y, "Instances", obj_FadeTransition)
}