//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A lecturn with a book open on it";
		mySpeaker[i]	= id;
		myScripts[i]    = [change_variable, id, "choice_variable", "Interacted"]
		
		//Line 1
		i++;
		myText[i]		= "You blow off the dust on the pages";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "The book says,'";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "... and they will come.";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "From a light in the sky.";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "And they will know how to wake us from this dream'";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "A... dream?";
		mySpeaker[i]	= TestPlayer;
		
		//Line 7
		i++;
		myText[i]		= "I guess that would explain... all of this";
		mySpeaker[i]	= TestPlayer;
		
		//Line 8
		i++;
		myText[i]		= "I should find whoever this is talking about";
		mySpeaker[i]	= TestPlayer;
	#endregion
	break;
	
	case "Interacted":
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The book says,'";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "... and they will come.";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "From a light in the sky.";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "And they will know how to wake us from this dream'";
		mySpeaker[i]	= id;
	#endregion
	break;
}