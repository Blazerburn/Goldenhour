//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A stone sign with some writing on it, it says";
		mySpeaker[i]	= id;
		myScripts[i]    = [change_variable, id, "choice_variable", "Interacted"]
		
		//Line 4
		i++;
		myText[i]		= "'The Kingdom is no longer around, do not worry about pledging any loyalty";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "Do still please make your way along the path";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "We know you have a lot of questions";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "We can provide the best answers we have at Glow City";
		mySpeaker[i]	= id;
		myTextCol[i]    = [44, c_magenta, 53, c_white];
		
		
		//Line 9
		i++;
		myText[i]		= "At the bottom of the sign there's a paper note attached with messy handwriting";
		mySpeaker[i]	= id;
		
		//Line 10
		i++;
		myText[i]		= "'Not anymore! Come to New Town instead'";
		mySpeaker[i]	= id;
		myTextCol[i]    = [22, c_lavender, 31, c_white];
		
		//Line 9
		i++;
		myText[i]		= "There's a small drawing of a little cat face at the bottom";
		mySpeaker[i]	= id;
		
		//Line 11
		i++;
		myText[i]		= "What is even happening?";
		mySpeaker[i]	= TestPlayer;
		
	#endregion
	break;
	
	case "Interacted":
	#region First Dialogue
		//Line 0
		var i = 0;
		//Line 4
		myText[i]		= "'The Kingdom is no longer around, do not worry about pledging any loyalty";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "Do still please make your way along the path";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "We know you have a lot of questions";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "We can provide the best answers we have at Glow City";
		mySpeaker[i]	= id;
		
		
		
		//Line 9
		i++;
		myText[i]		= "At the bottom of the sign there's a paper note attached with messy handwriting";
		mySpeaker[i]	= id;
		
		//Line 10
		i++;
		myText[i]		= "'Not anymore! Come to New Town instead'";
		mySpeaker[i]	= id;
		myTextCol[i]    = [22, c_purple, 31, c_white];
		
		//Line 9
		i++;
		myText[i]		= "There's a small drawing of a little cat face at the bottom";
		mySpeaker[i]	= id;
	#endregion
	break;
}