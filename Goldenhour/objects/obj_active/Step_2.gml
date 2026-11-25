/// @description Insert description here
// You can write your code in this editor
if (y != yprevious) {
	
	if (y >= 0 && y < room_height - 8) {
		update_layer()
	}
}

if (x != xprevious) {
	
	if (x >= 0 && x < room_width - 8) {
		update_layer()
	}
}