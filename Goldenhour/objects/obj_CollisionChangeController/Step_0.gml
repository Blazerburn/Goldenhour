/// @description Insert description here
// You can write your code in this editor
with (TestPlayer) {
	if place_meeting(x, y, obj_CollisionChangeCollision) {
		with (obj_CollisionChangeController) {
			if colliding = 0 {
			
				show_debug_message("Colliding")
				colliding = 1;
				changed = false;
			
			}
		}
	}
	
	else {
		with (obj_CollisionChangeController) {
			if colliding = 1 {
			
				colliding = 0;
				show_debug_message("Not Colliding")
				changed = false;
			
			}
		}
	}
}

if changed = false {
	if colliding = 0 {
		instance_activate_layer(beginLayerID)
		instance_deactivate_layer(collideLayerID)
		show_debug_message("Starting Layer")
	}

	if colliding = 1 {
		instance_deactivate_layer(beginLayerID)
		instance_activate_layer(collideLayerID)
		show_debug_message("New Layer")
	}
	show_debug_message(colliding)
	changed = true;
}