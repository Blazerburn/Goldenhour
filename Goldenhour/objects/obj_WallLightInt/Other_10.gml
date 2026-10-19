//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case 0:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "It's a hollow dome with some filament in it";
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++
		myText[i]		= "Is this a lightbulb..?";
		mySpeaker[i]	= TestPlayer;
		myScripts[i]    = [change_variable, id, "puzzleProgress", "1"]
		
	#endregion
	break;
	
	case 1:
	#region Second Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Definitely a lightbulb";
		mySpeaker[i]	= TestPlayer;
		myScripts[i]    = [change_variable, id, "puzzleProgress", "2"]
		
		
		
	#endregion
	break;
}
