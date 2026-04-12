/// @description Insert description here
// You can write your code in this editor
if (global.pressurePlatesActive >= boxesNeeded) {
	with(obj_Gate) {
	instance_deactivate_object(self);
	instance_deactivate_object(gateCollision);
	show_debug_message("Gate Open")
	}
}
else if (global.pressurePlatesActive == 0) {
	instance_activate_object(obj_Gate);
	with(obj_Gate) {
	instance_activate_object(gateCollision);
	}
}