//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "'This is the hardest one yet!";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Because I... I-";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Okay they said this one was ACTUALLY TOO HARD";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "That it was 'impossible' or whatever";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "That I should 'get some playtesters'";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "Bleh fine!";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "Now even a Fey could solve this puzzle!'";
		mySpeaker[i]	= id;
		
		
	#endregion
	break;

}