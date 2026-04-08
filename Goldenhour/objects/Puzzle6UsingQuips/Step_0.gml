if(global.recentlyInteracted == 0)
{
	if(global.Talking == 0)
{
	if(global.itemCheck == 1)
{
	if(global.itemWrongType == itemStrangeGel)
{

	
	create_textevent(
	["Yeah", 
	"Okay", 
	"So",
	"You need to BREAK the rock, not fix it",
	"And you want to use the sticky gel on the rock?",
	"THANKFULLY",
	"Against your initial judgement",
	"You decide to NOT fix the rock you're trying to break"],
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
		
			if(global.itemWrongType == itemStickyStick)
{
		create_textevent(
	["You start to stick the stick into the crack", 
	"But you stop yourself before you do",
	"You don't want to seal the crack",
	"And that might be a good way to do it"],
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
	["You stick the chiseled rock into the crack", 
	"The only problem is that you don't have a hammer like before",
	"If you want to break open the crack",
	"You're going to have to do it in a different way"],
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

			if(global.itemWrongType == itemLongStick)
{
		create_textevent(
	["You stick the stick into the crack", 
	"...",
	"You pull the stick out of the crack",
	"You honestly have no idea what you were thinking"],
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
	["If you were to try to cut the rock with the glass shard", 
	"The glass would definitely break without making any progress",
	"You think something sturdier might work"],
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
	["How..?"],
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
	
	with(obj_Ruins1Puzzle6){

	
	}
				
					global.inventoryOpen = 0;
				
					variable_instance_set(obj_Ruins1Puzzle6, "choice_variable", "Used");
					
					variable_instance_set(obj_Ruins1Puzzle6, "puzzleProgress", "1");
					
					global.usingItem = 0;
					
					//[change_variable, id, "puzzleProgress", "1"]
					
					//script_execute_alt(change_variable( obj_BrokenPathPickup, "choice_variable", "Used"));
				
							create_textevent(
	["You grab the makeshift axe you've made", 
	"You pull it back and swing with as much force as you can against the crack",
	"Ding",
	"The crack expands a bit",
	"You swing again",
	"Ding",
	"The crack expands even more",
	"You swing again... and again... and again",
	"Expanding the crack more and more, until...",
	"A final ding",
	"You hacked a piece of the rock off",
	"You think you can now move the box past",
	"You look at what you did, proud of yourself",
	"You go to put your axe in your bag when you notice that the entire top half is gone",
	"Ah",
	"Looks like you broke it",
	"With a sigh, you drop the now broken stick"],
	-1,
	[[-1], [-1], [1,1, 5,0], [-1], [-1], [1,1, 5,0], [-1], [-1], [-1], [8,1, 13,0], [-1], [-1], [-1], [-1], [-1], [-1], [-1]],
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