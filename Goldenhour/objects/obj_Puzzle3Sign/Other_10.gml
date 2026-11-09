//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "'Are these puzzles getting too difficult for you???";
		mySpeaker[i]	= id;
		myScripts[i]    = [change_variable, id, "choice_variable", "Interacted"]
		
		//Line 1
		i++;
		myText[i]		= "Well now you have TWO boxes to push";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Only the brightest could know where TWO boxes are meant to go";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "I can't imagine that broken pressure plate was a part of the original puzzle";
		mySpeaker[i]	= TestPlayer;
		
	#endregion
	break;
	
	case "Interacted":
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "'Are these puzzles getting too difficult for you???";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Well now you have TWO boxes to push!!!";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Only the brightest could know where TWO boxes are meant to go";
		mySpeaker[i]	= id;
	#endregion
	break;
}