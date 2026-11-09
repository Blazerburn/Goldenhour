//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "'Welcome to the first of my many puzzles to test your mind!";
		mySpeaker[i]	= id;
		myScripts[i]    = [change_variable, id, "choice_variable", "Interacted"]
		
		//Line 1
		i++;
		myText[i]		= "Only if you have not become Fey could you possibly solve these!";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "'Become Fey'?";
		mySpeaker[i]	= TestPlayer;
		
		//Line 3
		i++;
		myText[i]		= "What the hell does that mean?";
		mySpeaker[i]	= TestPlayer;
		
	#endregion
	break;
	
	case "Interacted":
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "'Welcome to the first of my many puzzles to test your mind!";
		mySpeaker[i]	= id;
		myScripts[i]    = [change_variable, id, "choice_variable", "Interacted"]
		
		//Line 1
		i++;
		myText[i]		= "Only if you have not become Fey could you possibly solve these!";
		mySpeaker[i]	= id;
	#endregion
	break;
}