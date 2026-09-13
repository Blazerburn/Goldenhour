//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The bridge has collapsed, you're not going to be able to get across it";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "And you don't want to risk falling into that glowing river";
		mySpeaker[i]	= id;
	#endregion
	break;
}