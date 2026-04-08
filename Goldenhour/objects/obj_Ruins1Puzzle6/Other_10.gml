//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A large rock blocks the path of the box";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "But there's a large crack that runs through the center of it";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "You might be able to use the crack to break it somehow";
		mySpeaker[i]	= id;

		//Line 3
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,4];
		myScripts[i]	= [[use_item, "Makeshift Axe", Puzzle6UsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//Line 4
		i++;
		myText[i]		= "You back away from the rock for now";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The rock still blocks the path";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,0];
		myScripts[i]	= [[use_item, "Makeshift Axe", Puzzle6UsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
	
		case "Used":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "You can now move the box past the rock";
		mySpeaker[i]	= id;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}