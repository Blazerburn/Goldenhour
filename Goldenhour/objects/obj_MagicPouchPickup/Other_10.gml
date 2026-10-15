//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "There's a small pouch on the table";
		mySpeaker[i]	= id;

		
		//Line 1
		i++;
		myText[i]		= "A strange tingling sensation runs throughout your entire body";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "You're not sure what it is, but you feel almost connected to it";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "...";
		myTextSpeed[i]	= [1, 0.3];
		mySpeaker[i]	= id;

		//Line 6
		i++;
		myText[i]		= "You grab the pouch and wrap the strap around your shoulder almost without thinking";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "You got the Magic Pouch!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "Press tab to look inside of it!";
		mySpeaker[i]	= id;

		#endregion
	break;
	
	case "Took":
	#region If you chose green
		var i = 0;
		//Line 1
		myText[i]		= "There's nothing else of interest left";
		mySpeaker[i]	= id;

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}