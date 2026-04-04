if(global.pressurePlatesActive == 3)
{
	if (global.shiningCityPowered == 1) {
	with(gateCollision) instance_destroy();
	global.gate4Open = 1;
	instance_destroy();
	}
}