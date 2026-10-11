if(global.recentlyInteracted == 0)
{
	if(global.Talking == 0)
{
	if(global.itemCheck == 1)
{
	if(global.itemWrongType == itemStrangeGel)
{

	
	create_textevent(
	["Yeah um...", 
	"Not sure what the plan is there"],
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

			if(global.itemWrongType == itemBrokenGlassShard)
{
		create_textevent(
	["It's a hole",
	"How will this help?"],
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
	["Yeah okay so small rock",
	"And you need to get across this hole",
	"And you want to use the small rock, on the hole"],
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

			if(global.itemWrongType == itemSecretBook10thHour)
{
		create_textevent(
	["The book is glowing for some reason",
	"You flip it open, and the front page actually has something on it",
	"The hole is crudly drawn with a wooden plank over it",
	"What's most weird is that this hole is new, so how is it possibly in the book?"],
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
	
				
					global.inventoryOpen = 0;
					
					global.usingItem = 0;
					
					variable_instance_set(obj_Ruins1DeepLibraryHole, "choice_variable", 2)
					
					//[change_variable, id, "puzzleProgress", "1"]
					
					//script_execute_alt(change_variable( obj_BrokenPathPickup, "choice_variable", "Used"));
				
							create_textevent(
	["You pull out the wooden plank and place it over the hole", 
	"You press your foot on it a moment to see if it can hold your weight",
	"It seems to hold well enough"],
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