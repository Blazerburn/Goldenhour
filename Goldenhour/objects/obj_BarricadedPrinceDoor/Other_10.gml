//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The door won't open";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "It feels like something is blocking it from the other side";
		mySpeaker[i]	= id;
		
	#endregion
	break;
}