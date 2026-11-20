//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "There's a small journal on the floor";
		mySpeaker[i]	= id;
		myScripts[i]    = [change_variable, id, "choice_variable", "Interacted"]
		
		//Line 1
		i++;
		myText[i]		= "You flip it open, there's some incomprehensible sketches of... puzzles?";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "You can only assume it's puzzles... but they don't make any sense";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You turn to the end of the journal";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "Ah, it's something somewhat coherent, it says,'";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "The King is real";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "I didn't believe it, NO ONE HERE BELIVED IT";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "I found him deep underground in a secret room";
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "He was trapped in there";
		mySpeaker[i]	= id;
		
		//Line 9
		i++;
		myText[i]		= "I've told the council about him and sealed the gates";
		mySpeaker[i]	= id;
		
		//Line 10
		i++;
		myText[i]		= "He can't escape without it being powered";
		mySpeaker[i]	= id;
		
		//Line 11
		i++;
		myText[i]		= "I WIN";
		mySpeaker[i]	= id;
		
		//Line 12
		i++;
		myText[i]		= "...";
		mySpeaker[i]	= id;
		
		//Line 13
		i++;
		myText[i]		= "For when they DEAL WITH THAT FEY";
		mySpeaker[i]	= id;
		
		//Line 14
		i++;
		myText[i]		= "I've hidden the code to the puzzle around the city so that they can get that damn rock";
		mySpeaker[i]	= id;
		
		//Line 15
		i++;
		myText[i]		= "One last puzzle I guess...";
		mySpeaker[i]	= id;
		
		//Line 16
		i++;
		myText[i]		= "...";
		mySpeaker[i]	= id;
		
		//Line 17
		i++;
		myText[i]		= "But it's the end for me";
		mySpeaker[i]	= id;
		
		//Line 18
		i++;
		myText[i]		= "I'm going to seal the castle";
		mySpeaker[i]	= id;
		
		//Line 19
		i++;
		myText[i]		= "He should be too STUPID to know where outside is";
		mySpeaker[i]	= id;
		
		//Line 20
		i++;
		myText[i]		= "Goodluck";
		mySpeaker[i]	= id;
		
		//Line 21
		i++;
		myText[i]		= "Signed the Puzzle Tzar'";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case "Interacted":
	#region First Dialogue
		//Line 0
		var i = 0;
		//Line 0
		myText[i]		= "You turn to the end of the journal";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "It says,'";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "The King is real";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "I didn't believe it, NO ONE HERE BELIVED IT";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "I found him deep underground in a secret room";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "He was trapped in there";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "I've told the council about him and sealed the gates";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "He can't escape without it being powered";
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "I WIN";
		mySpeaker[i]	= id;
		
		//Line 9
		i++;
		myText[i]		= "...";
		mySpeaker[i]	= id;
		
		//Line 10
		i++;
		myText[i]		= "For when they DEAL WITH THAT FEY";
		mySpeaker[i]	= id;
		
		//Line 11
		i++;
		myText[i]		= "I've hidden the code to the puzzle around the city so that they can get that damn rock";
		mySpeaker[i]	= id;
		
		//Line 12
		i++;
		myText[i]		= "One last puzzle I guess...";
		mySpeaker[i]	= id;
		
		//Line 13
		i++;
		myText[i]		= "...";
		mySpeaker[i]	= id;
		
		//Line 14
		i++;
		myText[i]		= "But it's the end for me";
		mySpeaker[i]	= id;
		
		//Line 15
		i++;
		myText[i]		= "I'm going to seal the castle";
		mySpeaker[i]	= id;
		
		//Line 16
		i++;
		myText[i]		= "He should be too STUPID to know where outside is";
		mySpeaker[i]	= id;
		
		//Line 17
		i++;
		myText[i]		= "Goodluck";
		mySpeaker[i]	= id;
		
		//Line 18
		i++;
		myText[i]		= "Signed the Puzzle Tzar'";
		mySpeaker[i]	= id;
	#endregion
	break;
}