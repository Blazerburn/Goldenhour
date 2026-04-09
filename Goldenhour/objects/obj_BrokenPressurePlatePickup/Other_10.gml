//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "It looks like one of the pressure plates is broken";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You'll have to fix it for the box to activate it";
		mySpeaker[i]	= id;

		//Line 2
		i++;
		myText[i]		= ["Take the Broken Plate", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [3,5];
		myScripts[i]	= [[change_variable, id, "puzzleProgress", "1"], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 3
		i++;
		myText[i]		= "You scoop the broken pieces of the pressure plate and put them into your pouch";
		myScripts[i]    = [add_item, 0, itemBrokenPlate, pressureplatebroken, "Broken Plate", 1];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You got the Broken Pressure Plate!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 5
		i++;
		myText[i]		= "You decide to leave the broken pressure plate pieces for now";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You might need to grab these pieces to fix them though";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "An empty spot where the broken tile was";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,2];
		myScripts[i]	= [[use_item, "Fixed Plate", Puzzle3UsingQuips], [change_variable, id, "choice_variable", "Take"]];
		mySpeaker[i]	= TestPlayer;
		
		
		//Line 2
		i++;
		myText[i]		= "You leave the empty space";
		mySpeaker[i]	= id;
		


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The broken pressure plate still sits on path";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Take the Broken Plate", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,4];
		myScripts[i]	= [[add_item, 0, "Broken Plate", pressureplatebroken, "Broken Plate", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 2
		i++;
		myText[i]		= "You scoop the broken pieces of the pressure plate and put them into your pouch";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You got the Broken Tile!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You decide to leave the broken pressure plate pieces for now";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "You might need to grab these pieces to fix them though";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
	
	case "Used":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "The pressure plate is now fixed";
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++;
		myText[i]		= "You should be able to put a box on it";
		mySpeaker[i]	= id;
		
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}