//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The door to this building is sealed";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "It looks like it's sealed by the same strange gel you have";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "If you had something small and sharp to cut it open";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You could probably open the door";
		mySpeaker[i]	= id;

		//Line 4
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,5];
		myScripts[i]	= [[use_item, "Broken Glass", Puzzle5DoorUsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//Line 5
		i++;
		myText[i]		= "You leave the sealed door for now";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The door is still sealed";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,0];
		myScripts[i]	= [[use_item, "Broken Glass", Puzzle5DoorUsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}