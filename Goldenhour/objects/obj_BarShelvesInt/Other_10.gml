//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case 0:
	#region First Dialogue
	
		//Line 0
		var i = 0;
		myText[i]		= "An empty shelf";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A broken empty shelf";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 2:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A shelf filled with clean glasses";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 3:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A shelf filled with clean glasses";
		mySpeaker[i]	= id;
		
		//Line 1
		i++
		myText[i]		= "Seems like someone broke these ones";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 4:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A shelf filled with a bunch of dirty bottles";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 5:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A bunch of broken dirty bottles";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
}