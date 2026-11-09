//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A stone sign with some writing on it, it says";
		mySpeaker[i]	= id;
		myScripts[i]    = [change_variable, id, "choice_variable", "Interacted"]
		
		//Line 1
		i++;
		myText[i]		= "'You have entered the kingdom of our most gracious Prince!";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Make your way along the path through the forest to reach his majesty's castle";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "Where you will then pledge your loyalty to the Prince!'";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "There's another small stone sign that has been attached to this sign";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "This sign and all the ruins you see are apart of a preservation effort, please don't disturb them";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "At the bottom of the sign there's a paper note attached with messy handwriting";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "'I can't believe there used to be a monarchy here lol'";
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "What... is this place?";
		mySpeaker[i]	= TestPlayer;
		
	#endregion
	break;
	
	case "Interacted":
	#region First Dialogue
		//Line 0
		var i = 0;
		//Line 1
		myText[i]		= "'You have entered the kingdom of our most gracious Prince!";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Make your way along the path through the forest to reach his majesty's castle";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "Where you will then pledge your loyalty to the Prince!'";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "There's another small stone sign that has been attached to this sign";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "This sign and all the ruins you see are apart of a preservation effort, please don't disturb them";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "At the bottom of the sign there's a paper note attached with messy handwriting";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "'I can't believe there used to be a monarchy here lol'";
		mySpeaker[i]	= id;
	#endregion
	break;
}