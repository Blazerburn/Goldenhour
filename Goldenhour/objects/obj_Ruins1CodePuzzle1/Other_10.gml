//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "One of the boxes that I can push has been tied down with some rope";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "If I had something sharp, I might be able to cut it";
		mySpeaker[i]	= id;
		

		//Line 2
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,3];
		myScripts[i]	= [[use_item, "Broken Glass", Puzzle2UsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//Line 3
		i++;
		myText[i]		= "You leave the tied down box for now";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You'll come back once you have something to cut the rope with";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The box is still tied down";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,0];
		myScripts[i]	= [[use_item, "Broken Glass Shard", Puzzle2UsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}