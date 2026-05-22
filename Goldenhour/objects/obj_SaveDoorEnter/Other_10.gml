//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "It's a door";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "But there's a hole in it with strange... runes?";
		mySpeaker[i]	= id;
		

		//Line 2
		i++;
		myText[i]		= ["Inspect the hole", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [3,4];
		myScripts[i]	= [[change_variable, id, "puzzleProgress", "1"], [change_variable, id, "choice_variable", "-1"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 3
		i++;
		myText[i]		= "You put your hand up to the hole";
		myNextLine[i]   = -1;
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You back away from the door for now";
		myNextLine[i]   = -1;
		mySpeaker[i]	= id;
	#endregion
	break;
	
	case "Opened":
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The door is open";
		mySpeaker[i]	= id;
	#endregion
	break;
}