//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The hole you fell down";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You'll need to use something to get across";
		mySpeaker[i]	= id;
		

		//Line 2
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,-1];
		myScripts[i]	= [[use_item, itemWoodenPlank, Puzzle5HoleUsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		#endregion
	break;
	
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "You still need something to get across";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,-1];
		myScripts[i]	= [[use_item, itemWoodenPlank, Puzzle5HoleUsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}