//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A larger rock than any one you've seen here";
		mySpeaker[i]	= id;

		
		//Line 1
		i++;
		myText[i]		= "There doesn't seem to be anything in particular to note besides it's size, but it might be useful";
		mySpeaker[i]	= id;
		

		//Line 2
		i++;
		myText[i]		= ["Take the Large Rock", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [3,8];
		myScripts[i]	= [[add_item, 0, itemHeavyRock, TestSpriteObjectInventory, "Large Rock", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 3
		i++;
		myText[i]		= "You reach both your hands around the rock and pick it up with some force";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "The rock is quite heavy so it takes some effort";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "But you manage to push it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "This pouch can really hold a lot, it doesn't even feel like it has that rock in it";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "You got the Large Rock!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Destroy"];
		mySpeaker[i]	= id;


		//Line 8
		i++;
		myText[i]		= "You decide to leave the large rock for now";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 11
		myText[i]		= "";
		mySpeaker[i]	= id;

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "A large rock lays their lazily";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Take the Large Rock", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,8];
		myScripts[i]	= [[add_item, 0, itemHeavyRock, TestSpriteObjectInventory, "Large Rock", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 2
		i++;
		myText[i]		= "You reach both your hands around the rock and pick it up with some force";
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
		myText[i]		= "This pouch can really hold a lot, it doesn't even feel like it has that rock in it";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You got the Large Rock!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Destroy"];
		mySpeaker[i]	= id;


		//Line 7
		i++;
		myText[i]		= "You decide to leave the large rock again";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}