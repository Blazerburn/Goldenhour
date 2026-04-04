//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "In the piles of rocks you see one rock that catches your eye";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You pick it up";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "The rock tapers off to a sharp point";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You might be able to use this on something";
		mySpeaker[i]	= id;


		//Line 4
		i++;
		myText[i]		= ["Take the Chiseled Rock", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [5,7];
		myScripts[i]	= [[add_item, 0, "Chisel Rock", ChiselRock, "Chisel Rock", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 5
		i++;
		myText[i]		= "You grab the chiseled rock and put it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You got the Chiseled Rock!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 7
		i++;
		myText[i]		= "You decide to leave the chiseled rock for now";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "None of the other rocks look useful";
		mySpeaker[i]	= id;
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The chiseled rock is still resting in the pile";
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++;
		myText[i]		= ["Take the Chiseled Rock", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,4];
		myScripts[i]	= [[add_item, 0, "Chisel Rock", ChiselRock, "Chisel Rock", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 2
		i++;
		myText[i]		= "You grab the chiseled rock and put it into your pouch";
		mySpeaker[i]	= id;
		
		
		//Line 3
		i++;
		myText[i]		= "You got the Chiseled Rock!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You decide to leave the chiseled rock for now";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}