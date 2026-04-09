//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "There's a closed chest in this ruined house";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Would you like to open it?";
		mySpeaker[i]	= id;

		//Line 2
		i++;
		myText[i]		= ["Open the Chest", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [3,7];
		myScripts[i]	= [[change_variable, id, "choice_variable", "Take"], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 3
		i++;
		myText[i]		= "You swing open the chest and begin to rummage through it's contents";
		myScripts[i]    = [add_item, 0, "Long Stick", LongStick, "Long Stick", 1];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "There's a lot of rubbage inside, but you do find one thing that looks useful";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "A long stick!";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You got the Long Stick!";
		myNextLine[i]   = -1;
		mySpeaker[i]	= id;


		//Line 7
		i++;
		myText[i]		= "You decide to leave the chest for now";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 11
		myText[i]		= "The chest doesn't look like it has anything else useful";
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
		myText[i]		= "There's a closed chest in this ruined house";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Would you like to open it?";
		mySpeaker[i]	= id;

		//Line 2
		i++;
		myText[i]		= ["Open the Chest", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [3,7];
		myScripts[i]	= [[add_item, 0, "Long Stick", LongStick, "Long Stick", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 3
		i++;
		myText[i]		= "You swing open the chest and begin to rummage through it's contents";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "There's a lot of rubbage inside, but you do find one thing that looks useful";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "A long stick!";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You got the Long Stick!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}