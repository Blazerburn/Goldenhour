//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case 0:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "How did you reach this?";
		mySpeaker[i]	= id;
	#endregion
	break;
	
	case 1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A painting of the strange sky with the blue trees that cover this landscape";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "The painting seems to have been knocked a bit from it's normal orientation";
		mySpeaker[i]	= id;
	#endregion
	break;
	
	case 2:
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
		myText[i]		= "The painting appears to be depicting some sort of blue star shaped rock?";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "But it's now been covered by this red 2";
		myTextCol[i]    = [38, c_red, 40, c_white];
		mySpeaker[i]	= id;
	#endregion
	break
	
	case 3:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A strange marble building surrounded by a gold paint";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "It looks kind of like the Parthenon if it had a clock on it";
		mySpeaker[i]	= id;
	#endregion
	break;
	
	case 4:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The golden river surrounds one of the trees";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "The scene feels kinda serene";
		mySpeaker[i]	= id;
	#endregion
	break;
}