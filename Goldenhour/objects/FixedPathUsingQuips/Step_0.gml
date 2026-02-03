if(global.recentlyInteracted == 0)
{
	if(global.Talking == 0)
{
	if(global.itemCheck == 1)
{
	if(global.itemWrongType == itemBrokenPath)
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
	
	with(obj_BrokenPathPickup){

	
	}
				
					global.inventoryOpen = 0;
				
					variable_instance_set(obj_BrokenPathPickup, "choice_variable", "Used");
					
					variable_instance_set(obj_BrokenPathPickup, "puzzleProgress", "2");
					
					//[change_variable, id, "puzzleProgress", "1"]
					
					//script_execute_alt(change_variable( obj_BrokenPathPickup, "choice_variable", "Used"));
				
							create_textevent(
	["The tile pieces you stuck together fit into where the path was", 
	"It fits perfectly!",
	"It seems like you should be able to move the box across"],
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