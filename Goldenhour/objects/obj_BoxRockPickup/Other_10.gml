//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A rock carving of one of the crates sits on a stump";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "It's at about half the size of an actual crate";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "But it looks pretty accurate";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "Now it's just the stump";
		mySpeaker[i]	= id;
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The crate shaped rock is still resting on the stump";
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++;
		myText[i]		= ["Take the Crate Rock", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,7];
		myScripts[i]	= [[add_item, 0, itemHeavyRock, TestSpriteObjectInventory, "Crate Rock", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 2
		i++;
		myText[i]		= "You reach both your hands around the rock and pick it up";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "The rock is quite heavy so it takes some effort";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "But you manage to push it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "This pouch doesn't even feel like it has that rock in it";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You got the Crate Rock!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 7
		i++;
		myText[i]		= "You decide to leave the crate rock for now";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
	
	
	case "Get":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "Hm, well maybe a rock shaped like a crate will be enough for the pressure plate";
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++;
		myText[i]		= ["Take the Crate Rock", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,7];
		myScripts[i]	= [[add_item, 0, itemHeavyRock, TestSpriteObjectInventory, "Crate Rock", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 2
		i++;
		myText[i]		= "You reach both your hands around the rock and pick it up";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "The rock is quite heavy so it takes some effort";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "But you manage to push it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "This pouch doesn't even feel like it has that rock in it";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You got the Crate Rock!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 7
		i++;
		myText[i]		= "You decide to leave the crate rock for now";
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