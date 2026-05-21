//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The door swings open";
		mySpeaker[i]	= id;
		myScripts[i]    = [change_variable, id, "choice_variable", "Open"]
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