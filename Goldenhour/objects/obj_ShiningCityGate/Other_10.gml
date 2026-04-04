//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The gate is closed";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "It looks like there's no power going to it for some reason";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "You might need to power it somehow before it can be opened";
		mySpeaker[i]	= id;
		
	#endregion
	break;
}