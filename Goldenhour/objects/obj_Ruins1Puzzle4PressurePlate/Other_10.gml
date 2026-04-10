//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The pressure plate that the box is supposed to go on";
		myScripts[i]	= [change_variable, id, "choice_variable", "Leave"]
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++;
		myText[i]		= "Now that you've pushed the box into the river, you'll need something else to stay on the pressure plate";
		mySpeaker[i]	= id;
		

		//Line 2
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,3];
		myScripts[i]	= [[use_item, itemHeavyRock, Puzzle4UsingQuipsC], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//Line 3
		i++;
		myText[i]		= "You leave the pressure plate for now";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You'll come back once you have something hold it down";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The pressure plate is still unpressed";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,-1];
		myScripts[i]	= [[use_item, itemHeavyRock, Puzzle4UsingQuipsC], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
	
	case "Used":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The pressure plate is held down by the rock";
		mySpeaker[i]	= id;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}