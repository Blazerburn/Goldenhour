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
	
	
	case "Get":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "Okay uh, maybe there's a rock big enough to activate the pressure plate";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You rummage through the pile of rocks again";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Hm, well there's a pretty large rock in here";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "That might be enough to hold down a pressure plate";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= ["Take the Large Rock", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [5,10];
		myScripts[i]	= [[add_item, 0, itemHeavyRock, TestSpriteObjectInventory, "Large Rock", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 5
		i++;
		myText[i]		= "You reach both your hands around the rock and pick it up with some force";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "The rock is quite heavy so it takes some effort";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "But you manage to push it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "This pouch doesn't even feel like it has that rock in it";
		mySpeaker[i]	= id;
		
		//Line 9
		i++;
		myText[i]		= "You got the Large Rock!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take2"];
		mySpeaker[i]	= id;


		//Line 10
		i++;
		myText[i]		= "You decide to leave the large rock for now";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
	
		case "Take2":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "Okay probably none of the other rocks are useful";
		mySpeaker[i]	= id;
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}