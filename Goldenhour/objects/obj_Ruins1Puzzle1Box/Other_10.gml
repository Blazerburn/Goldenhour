//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "It looks like a box of sorts that's on... a path?";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "And it looks like there's some sort of button at the end of it";
		mySpeaker[i]	= id;
		

		//Line 2
		i++;
		myText[i]		= ["Push the box", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,-1];
		myScripts[i]	= [[change_variable, id, "puzzleProgress", "1"], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		#endregion
	break;
	
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= ["Push the box", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,-1];
		myScripts[i]	= [[change_variable, id, "puzzleProgress", "1"], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}