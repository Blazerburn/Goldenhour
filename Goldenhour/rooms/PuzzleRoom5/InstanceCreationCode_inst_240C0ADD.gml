boxesNeeded = 3;
global.gate4Open = 0;

if (global.pressurePlatesActive >= boxesNeeded) {
	show_debug_message("Powered")
	show_debug_message(global.shiningCityPowered)
	if (global.shiningCityPowered == 1) {
		global.gate4Open = 1;
		show_debug_message("Gate 4 Open")
		show_debug_message(global.gate4Open)
	}
}