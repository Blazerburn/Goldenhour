//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "This stool feels a little out of place";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You begin to inspect it and look under it";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "It looks like something is painted on the bottom of it";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You flip the stool so you can get a better look";
		myScripts[i]	= [change_variable, id, "choice_variable", "Leave"];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "A blue 5 is painted on the bottom of this stool";
		myTextCol[i]    = [7, c_aqua, 9, c_white];
		mySpeaker[i]	= id;
		
		#endregion
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "A blue 5 is painted on the bottom of this stool";
		myTextCol[i]    = [7, c_aqua, 9, c_white];
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}