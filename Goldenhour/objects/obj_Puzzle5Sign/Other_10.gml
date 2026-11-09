//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "'It's said that after all the inhabitants woke up, the Prince stayed behind";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "That he stills roams the halls of his castle, and he lost himself";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "A true Fey";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "One they call, the 'King'";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "What a whole load of rubbish!";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "Trying to take away from MY puzzle!";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "Anyways uh... enjoy the puzzle!'";
		mySpeaker[i]	= id;
		
		
	#endregion
	break;

}