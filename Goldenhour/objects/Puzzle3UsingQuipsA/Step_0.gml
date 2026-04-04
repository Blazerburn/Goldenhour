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
	["You could use it to seal up the crack", 
	"But...", 
	"How would that help cross the river?"],
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
		
			if(global.itemWrongType == itemCrystallineHammer)
{
		create_textevent(
	["You pull out the hammer and smack the side of the tile", 
	"It doesn't give much at all",
	"Maybe if you had something to help get inbetween the crack?"],
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
	
	with(obj_Ruins1Puzzle3){

	
	}
				
					global.inventoryOpen = 0;
				
					variable_instance_set(obj_Ruins1Puzzle3, "choice_variable", "Used");
					
					variable_instance_set(obj_Ruins1Puzzle3, "puzzleProgress", "1");
					
					global.usingItem = 0;
					
					//[change_variable, id, "puzzleProgress", "1"]
					
					//script_execute_alt(change_variable( obj_BrokenPathPickup, "choice_variable", "Used"));
				
							create_textevent(
	["You grab the rock and stick it inbetween the crack", 
	"You could try to hit it with the hammer now"],
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