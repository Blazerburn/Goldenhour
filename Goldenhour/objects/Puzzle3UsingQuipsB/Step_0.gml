if(global.recentlyInteracted == 0)
{
	if(global.Talking == 0)
{
	if(global.itemCheck == 1)
{
	if(global.itemWrongType == itemStrangeGel)
{

	
	create_textevent(
	["Okay", 
	"What?", 
	"You do realize you're trying to break the tile wall, right?",
	"All the gel would do is seal the crack up",
	"Thankfully you regain your sensabilities and don't seal the crack"],
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
				
					variable_instance_set(obj_Ruins1Puzzle3, "choice_variable", "Used Again");
					
					variable_instance_set(obj_Ruins1Puzzle3, "puzzleProgress", "2");
					
					global.usingItem = 0;
					
					//[change_variable, id, "puzzleProgress", "1"]
					
					//script_execute_alt(change_variable( obj_BrokenPathPickup, "choice_variable", "Used"));
				
							create_textevent(
	["You pull out the hammer and smack the rock", 
	"The loud cracking stone reverberates through the air",
	"The crack expands a bit",
	"You hit it again, the crack grows",
	"You swing a final time, putting as much force as you can",
	"The stone tile wall crumbles as the crack splits it in half",
	"You could now move the box out of the tile path"],
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