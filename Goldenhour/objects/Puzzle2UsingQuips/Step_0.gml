if(global.recentlyInteracted == 0)
{
	if(global.Talking == 0)
{
	if(global.itemCheck == 1)
{
	if(global.itemWrongType == itemStrangeGel)
{

	
	create_textevent(
	["You place down the broken tile pieces where they belong", 
	"...", 
	"It's still broken...",
	"What did you think that would accomplish?",
	"You quickly up the pieces, checking over your shoulder to see if anyone saw you",
	"Thankfully it doesn't look like anyone is around"],
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
		
			if(global.itemWrongType == itemStrangeGel)
{
		create_textevent(
	["You could put some of the strange gel on the floor", 
	"But... it might make more sense to place it on the broken piece, and then stick that to the floor"],
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
	
	with(obj_Ruins1Puzzle2){

	
	}
				
					global.inventoryOpen = 0;
				
					variable_instance_set(obj_Ruins1Puzzle2, "choice_variable", "Destroy");
					
					variable_instance_set(obj_Ruins1Puzzle2, "puzzleProgress", "1");
					
					global.usingItem = 0;
					
					//[change_variable, id, "puzzleProgress", "1"]
					
					//script_execute_alt(change_variable( obj_BrokenPathPickup, "choice_variable", "Used"));
				
							create_textevent(
	["You pull out the piece of broken glass you got from the mosaic", 
	"You hold it against the rope and begin to slice through it",
	"It takes a minute",
	"But you slice through it all",
	"The ropes come undone with a snap"],
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