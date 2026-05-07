//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "In this endless room";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You feel a sense of calmness";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Save Game", "Leave"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,-1];
		myScripts[i]	= [[change_variable, id, "puzzleProgress", "1"], [change_variable, id, "choice_variable", "-1"]];
		mySpeaker[i]	= id;
		
	#endregion
	break;
}