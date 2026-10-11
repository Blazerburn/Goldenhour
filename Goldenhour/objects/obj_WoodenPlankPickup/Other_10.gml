//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A wooden plank is fastened against this double door making it unable to open";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "To get through, you'll have to take the plank off";
		mySpeaker[i]	= id;

		//Line 2
		i++;
		myText[i]		= ["Take the Wooden Plank", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [3,5];
		myScripts[i]	= [[add_item, 0, itemWoodenPlank, TestSpriteObjectInventory, "Wooden Plank", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 3
		i++;
		myText[i]		= "You lift off the wooden plank";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You got the Wooden Plank!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 5
		i++;
		myText[i]		= "You leave the door for now";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The wooden plank is still sealing the door";
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++;
		myText[i]		= ["Take the Wooden Plank", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,4];
		myScripts[i]	= [[add_item, 0, itemWoodenPlank, TestSpriteObjectInventory, "Wooden Plank", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 2
		i++;
		myText[i]		= "You lift off the wooden plank";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You got the Wooden Plank!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 4
		i++;
		myText[i]		= "You leave the door for now";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}