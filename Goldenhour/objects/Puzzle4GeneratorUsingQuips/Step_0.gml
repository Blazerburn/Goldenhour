if(global.recentlyInteracted == 0)
{
	if(global.Talking == 0)
{
	if(global.itemCheck == 1)
{
	if(global.itemWrongType == itemStrangeGel)
{

	
	create_textevent(
	["It doesn't seem like this is what it needs", 
	"It's definitely whatever is meant to go in this machine",
	"But it also seems like whatever is needed, will fit just fine and not need this gel"],
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	[[-1], [-1], [75, c_yellow, 79, c_white]],
	-1,
	-1,
);
			
				global.itemCheck = 0;
			
				exit;
}

			if(global.itemWrongType == itemBrokenGlassShard)
{
		create_textevent(
	["You don't think it would be a good idea to cut the wires",
	"And nothing else looks like it could be cut with glass"],
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


			if(global.itemWrongType == itemChiselRock)
{
		create_textevent(
	["You place the rock into the opening",
	"It's way too small to be what goes here",
	"You grab the rock and put it into your bag"],
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
	
	with(obj_Ruins1Puzzle4Generator){

	
	}
				
					global.inventoryOpen = 0;
				
					variable_instance_set(obj_Ruins1Puzzle4Generator, "choice_variable", "Used");
					
					variable_instance_set(obj_Ruins1Puzzle4Generator, "puzzleProgress", "1");
					
					global.usingItem = 0;
					
					global.shiningCityPowered = 1;
					
					//[change_variable, id, "puzzleProgress", "1"]
					
					//script_execute_alt(change_variable( obj_BrokenPathPickup, "choice_variable", "Used"));
				
							create_textevent(
	["You pull out the glowing rock", 
	"The energy that radiates from it is almost overwhelming",
	"You hold it up to the machine, and insert it",
	"The wires in the machine latch onto it, and almost seem to drag it into place",
	"A small humming rumble radiates from the machine",
	"It... seems to be powered now"],
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
				
					instance_destroy();
				
					exit;
}
}
}
}
}