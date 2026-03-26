//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A trapdoor is hidden under the rug";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "There's a lock with a four number code on it";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "There's also some colors marked on the lock";
		mySpeaker[i]	= id;
		

		//Line 3
		i++;
		myText[i]		= ["Enter the code", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,4];
		myScripts[i]	= [[number_code, 2, 5, 6, 2, obj_Ruins1CodePuzzle, 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//Line 4
		i++;
		myText[i]		= "You walk away from the trapdoor";
		mySpeaker[i]	= id;
		
		#endregion
	break;
	
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "You look down at the lock on the trapdoor";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Enter the code", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,2];
		myScripts[i]	= [[number_code, 2, 5, 6, 2, obj_Ruins1CodePuzzle, 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 2
		i++;
		myText[i]		= "You walk away from the trapdoor";
		mySpeaker[i]	= id;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}