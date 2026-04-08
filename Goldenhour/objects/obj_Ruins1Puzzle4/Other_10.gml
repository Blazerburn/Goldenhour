//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "It looks like the side of this tile actually has a crack in it";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You might be able to break it somehow";
		mySpeaker[i]	= id;
		

		//Line 2
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,3];
		myScripts[i]	= [[use_item, "Chisel Rock", Puzzle4UsingQuipsA], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 3
		i++;
		myText[i]		= "You back away from the tile for now";
		mySpeaker[i]	= id;

		#endregion
	break;
	
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "You look back at the cracked tile";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,2];
		myScripts[i]	= [[use_item, "Chisel Rock", Puzzle4UsingQuipsA], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 2
		i++;
		myText[i]		= "You back away from the tile for now";
		mySpeaker[i]	= id;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
		break;
	
	case "Used":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The rock is now wedged inbetween the crack";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You might be able to break it now";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,3];
		myScripts[i]	= [[use_item, "Crystal Hammer", Puzzle4UsingQuipsB], [change_variable, id, "choice_variable", "Leave Again"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 3
		i++;
		myText[i]		= "You back away from the tile for now";
		mySpeaker[i]	= id;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
		break;
	
	case "Leave Again":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The rock is still wedged inbetween the crack";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You might be able to break the tile";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,3];
		myScripts[i]	= [[use_item, "Crystal Hammer", Puzzle4UsingQuipsB], [change_variable, id, "choice_variable", "Leave Again"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 3
		i++;
		myText[i]		= "You back away from the tile for now";
		mySpeaker[i]	= id;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}