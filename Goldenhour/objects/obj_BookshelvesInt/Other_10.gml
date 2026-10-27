//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
	
		//Line 0
		var i = 0;
		myText[i]		= "A bookshelf with some books in it";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Maybe you should grab one to look at?";
		myScripts[i]    = [change_variable, id, "puzzleProgress", "1"];
		mySpeaker[i]	= id;
		
		
		//Line 2
		i++;
		myText[i]		= ["Grab a book", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,-1];
		myScripts[i]	= [[change_variable, id, "choice_variable", "Take"], [change_variable, id, "choice_variable", "-1"]];
		mySpeaker[i]	= TestPlayer;
		
	#endregion
	break;
	
	case "Took":
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Maybe there's another interesting book?";
		myScripts[i]    = [change_variable, id, "puzzleProgress", "1"];
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Grab a book", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,-1];
		myScripts[i]	= [[change_variable, id, "choice_variable", "Take"], [change_variable, id, "choice_variable", "-1"]];
		mySpeaker[i]	= TestPlayer;
		
	#endregion
	break;
	
	case "Empty":
	#region First Dialogue
	
		//Line 0
		var i = 0;
		myText[i]		= "It doesn't look like there's any other interesting books";
		mySpeaker[i]	= id;
		
		
	#endregion
	break;
	
}