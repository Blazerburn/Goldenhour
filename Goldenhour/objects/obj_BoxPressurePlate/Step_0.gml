/// @description Insert description here
// You can write your code in this editor

if (instance_exists(PushableObject)) {
	var nearestBox = instance_nearest(x, y, PushableObject);
	if rectangle_in_rectangle(nearestBox.x + 1, nearestBox.y + 10, nearestBox.x + 30, nearestBox.y + 27, 
	x - 2, y - 2, x + 2, y + 2) {
		if (pressurePlateActive == 0) {
			pressurePlateActive += 1
			global.pressurePlatesActive += 1;
			//show_debug_message("Pressure Plate Active")
			//show_debug_message(global.pressurePlatesActive)
		}
	}
	else {
		if (pressurePlateActive >= 1) {
			global.pressurePlatesActive -= 1;
			pressurePlateActive = 0;
			//show_debug_message(pressurePlateActive)
		}
	}
}