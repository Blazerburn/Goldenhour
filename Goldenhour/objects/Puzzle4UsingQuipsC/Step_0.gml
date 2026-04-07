show_debug_message(string(global.itemCheck));
if(global.recentlyInteracted == 0)
{
	if(global.Talking == 0)
{
	if(global.itemCheck == 1)
{
	if(global.itemWrongType == itemStrangeGel)
{

	
	create_textevent(
	["The gel is most certainly not heavy enough to hold down the pressure plate", 
	"And you're not going to use any of the gel to hold anything down unless you need to", 
	"But if find something heavy enough, it probably won't need to be held down"],
	-1/*,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,*/
);
			
				global.itemCheck = 0;
			
				exit;
}
		
			if(global.itemWrongType == itemChiselRock)
{
		create_textevent(
	["This rock is too small and light to hold down the pressure plate"],
	-1
	
);
			
				global.itemCheck = 0;
			
				exit;
}

			if(global.itemWrongType == itemBrokenGlassShard)
{
		create_textevent(
	["A piece of glass is definitely not heavy enough for this pressure plate"],
	-1
	
);
			
				global.itemCheck = 0;
			
				exit;
}

}
	
		else
{
	if(global.itemCheck == -1)
{
	show_debug_message(string("Destroy quips"));
			
				instance_destroy();
}
		
			else
{
	if(global.itemCheck == 2)
{
	show_debug_message(string("Used correct item"));
	
	with(obj_Ruins1Puzzle3){

	
	}
				
					global.inventoryOpen = 0;
				
					variable_instance_set(obj_Ruins1Puzzle4PressurePlate, "choice_variable", "Used");
					
					variable_instance_set(obj_Ruins1Puzzle4PressurePlate, "puzzleProgress", "1");
					
					global.usingItem = 0;
					
					//[change_variable, id, "puzzleProgress", "1"]
					
					//script_execute_alt(change_variable( obj_BrokenPathPickup, "choice_variable", "Used"));
				
							create_textevent(
	["You lift the heavy rock out of your pouch and slowly drop it onto the pressure plate", 
	"It seems to the trick and the gate opens"],
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	
);
					reset_room_song()
					global.itemCheck = 0;
				
					instance_destroy();
				
					exit;
}
}
}
}
}