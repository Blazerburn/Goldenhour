//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "'You know what makes a super difficult puzzle?";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Of course you don't!";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "That's why I'M the Puzzle Tzar";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "But it's obviously MORE BOXES";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "More boxes is what makes a true puzzle";
		mySpeaker[i]	= id;
		
		
	#endregion
	break;

}