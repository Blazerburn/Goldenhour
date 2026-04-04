//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A red 2 is painted on...";
		myTextCol[i]    = [6, c_red, 8, c_white];
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Well, a painting";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "But it's clear that it wasn't originally apart of the painting";
		mySpeaker[i]	= id;
		
		#endregion
	break;
	
}