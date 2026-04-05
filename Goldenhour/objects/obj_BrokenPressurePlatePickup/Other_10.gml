//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "It looks like a tile of the box path is broken";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Even though it seems like you should be able to still move the box over it";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "You can't!";
		myEffects[i]	= [20,1, 25,0];
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You'll have to fix it to move the box past";
		mySpeaker[i]	= id;

		//Line 4
		i++;
		myText[i]		= ["Take the Broken Tile", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [5,7];
		myScripts[i]	= [[change_variable, id, "puzzleProgress", "1"], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 5
		i++;
		myText[i]		= "You scoop the broken pieces of the tile and put them into your pouch";
		myScripts[i]    = [add_item, 0, itemBrokenPath, pressureplatebroken, "Broken Plate", 1];
		mySpeaker[i]	= id;
		
		//Line 6change_sprite, id, BrokenPathTile
		i++;
		myText[i]		= "You got the Broken Tile!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 7
		i++;
		myText[i]		= "You decide to leave the broken tile pieces for now";
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "You might need to grab these pieces to fix them though";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "An empty spot where the broken tile was";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,2];
		myScripts[i]	= [[use_item, "Fixed Path", FixedPathUsingQuips], [change_variable, id, "choice_variable", "Take"]];
		mySpeaker[i]	= TestPlayer;
		
		
		//Line 2
		i++;
		myText[i]		= "You leave the empty space";
		mySpeaker[i]	= id;
		


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The broken tile still sits on path";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Take the Broken Tile", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,4];
		myScripts[i]	= [[add_item, 0, "Broken Path", BrokenPath, "Broken Tile", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 2
		i++;
		myText[i]		= "You scoop the broken pieces of the tile and put them into your pouch";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You got the Broken Tile!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You decide to leave the broken tile pieces for now";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "You might need to grab these pieces to fix them though";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
	
	case "Used":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "The path is now fixed";
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++;
		myText[i]		= "You can now move the box across it";
		mySpeaker[i]	= id;
		
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}