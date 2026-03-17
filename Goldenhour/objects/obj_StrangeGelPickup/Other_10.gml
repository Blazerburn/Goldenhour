//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A golden glowing... gel..? Sits on the table of this room";
		mySpeaker[i]	= id;
		myTextCol[i]	= [2, c_yellow, 17, c_white];
		
		//Line 1
		i++;
		myText[i]		= "You stick your finger into it";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "It's sticky";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You might be able to do something with it";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= ["Take the Strange Gel", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [5,10];
		myScripts[i]	= [[add_item, 0, "Strange Gel", StrangeGel, "Strange Gel", 5], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		myHeadshot[i]   = 1;
		

		//Line 5
		i++;
		myText[i]		= "You pry the gel off of the table";
		myTextCol[i]	= [12,c_yellow, 16,c_white];
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "A bit of the strange gel sticks to your... fur";
		myTextCol[i]	= [13,c_yellow, 25,c_white];
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "You sigh";
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "You... you need to figure out what's going on";
		mySpeaker[i]	= id;
		
		//Line 9
		i++;
		myText[i]		= "You got the Strange Gel!";
		myNextLine[i]   = -1;
		myTextCol[i]	= [12,c_yellow, 24,c_white];
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 10
		i++;
		myText[i]		= "You decide to leave the strange gel for now";
		myTextCol[i]	= [24,c_yellow, 36,c_white];
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 11
		myText[i]		= "There's nothing else of use on the table";
		mySpeaker[i]	= id;
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The strange gel is still attached to the table";
		mySpeaker[i]	= id;
		myTextCol[i]	= [4,c_yellow, 16,c_white];
		
		//Line 1
		i++;
		myText[i]		= ["Take the Strange Gel", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,7];
		myScripts[i]	= [[add_item, 0, "Strange Gel", StrangeGel, "Strange Gel", 5], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 2
		i++;
		myText[i]		= "You pry the gel off of the table";
		myTextCol[i]	= [12,c_yellow, 16,c_white];
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "A bit of the strange gel sticks to your... fur";
		myTextCol[i]	= [13,c_yellow, 25,c_white];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You sigh";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "You... you need to figure out what's going on";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You got the Strange Gel!";
		myNextLine[i]   = -1;
		myTextCol[i]	= [12,c_yellow, 24,c_white];
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "You decide to leave the strange gel for now";
		myTextCol[i]	= [24,c_yellow, 36,c_white];
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}