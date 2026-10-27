//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "There's a... stick tucked in this bed";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "It looks very comfortable in there";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "...";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "No, you can't rest right now";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "But maybe this well rested stick could be usfeul?";
		mySpeaker[i]	= id;

		//Line 5
		i++;
		myText[i]		= ["Disturb it's slumber", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [6,8];
		myScripts[i]	= [[change_variable, id, "choice_variable", "Take"], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 6
		i++;
		myText[i]		= "You pull off the sheets and lift out the stick";
		myScripts[i]    = [add_item, 0, "Long Stick", LongStick, "Long Stick", 1];
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "You got the Long Stick!";
		myNextLine[i]   = -1;
		mySpeaker[i]	= id;


		//Line 8
		i++;
		myText[i]		= "You decide to leave the chest for now";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 11
		myText[i]		= "The bed has been disturbed";
		myTextSpeed[i]	= [1, 0.5];
		mySpeaker[i]	= id;
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The stick is still sleeping soundly";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Disturb it's slumber", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,4];
		myScripts[i]	= [[change_variable, id, "choice_variable", "Take"], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 2
		i++;
		myText[i]		= "You pull off the sheets and lift out the stick";
		myScripts[i]    = [add_item, 0, "Long Stick", LongStick, "Long Stick", 1];
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You got the Long Stick!";
		myNextLine[i]   = -1;
		mySpeaker[i]	= id;


		//Line 4
		i++;
		myText[i]		= "You decide to leave the chest for now";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}