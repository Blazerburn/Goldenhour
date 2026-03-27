if(global.recentlyInteracted == 0)
{
	if(global.Talking == 0)
{
	if(global.itemCheck == 1)
{
	if(global.itemWrongType == itemStrangeGel)
{

	
	create_textevent(
	["It's already sealed by the strange gel", 
	"It would not make sense to... apply more "],
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	[[27, c_yellow, 39, c_white], [-1]],
	-1,
	-1,
);
			
				global.itemCheck = 0;
			
				exit;
}

			if(global.itemWrongType == itemChiselRock)
{
		create_textevent(
	["You try to stick the edge of the rock into the crack", 
	"It's just slightly too big",
	"You'll have to use something smaller, but still sharp"],
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
	
	with(obj_Ruins1Puzzle5Door){

	
	}
				
					global.inventoryOpen = 0;
				
					variable_instance_set(obj_Ruins1Puzzle5Door, "choice_variable", "Used");
					
					variable_instance_set(obj_Ruins1Puzzle5Door, "puzzleProgress", "1");
					
					global.usingItem = 0;
					
					//[change_variable, id, "puzzleProgress", "1"]
					
					//script_execute_alt(change_variable( obj_BrokenPathPickup, "choice_variable", "Used"));
				
							create_textevent(
	["You pull out the broken glass shard from your bag", 
	"It fits perfectly between the cracks and you begin to cut up the gel",
	"It takes a bit, but eventually you cut enough to be able to open the door",
	"OUCH!",
	"You drop the glass shard and it shatters on the floor",
	"You look down at your hand and see a large cut",
	"You must've cut your hand on the glass",
	"Well, at least the door's open"],
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	[[-1], [65, c_yellow, 69, c_white], [-1]],
	-1,
	-1,
	
);
				
					global.itemCheck = 0;
				
					instance_destroy();
				
					exit;
}
}
}
}
}