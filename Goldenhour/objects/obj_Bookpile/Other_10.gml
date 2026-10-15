//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The pile of books that you fell on";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "None of the books grab your attention like the book you already picked up";
		mySpeaker[i]	= id;
		
	#endregion
	break;
}