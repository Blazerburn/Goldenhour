goToRoom = 0;
playerSpawnpoint = 1;
playerDirection = 1;
fadeIn = false;
fadeOut = false;
alpha = 0;


if !instance_exists(obj_FadeTransition) {
	instance_create_layer(x, y, "Instances", obj_FadeTransition)
}