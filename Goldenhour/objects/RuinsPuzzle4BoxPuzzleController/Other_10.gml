boxesActivated += 1;

if(boxesActivated >= boxesNeeded)
{
	if(global.shiningCityPowered == 1)
{
	show_debug_message(string("Box Puzzle Finished"));
	
		with(Gate) {
		event_user(0);
		}
	
		global.gate4Open = 1;
		instance_destroy();
}
}