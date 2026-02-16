if (instance_exists(obj_textbox))
{
	//show_debug_message("Exists")
	global.Talking = 1
	global.Immobilize = 1
}
else
{
	global.Talking = 0
	global.Immobilize = 0
	instance_destroy(self)
}