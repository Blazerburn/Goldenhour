 //---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A golden crystal hammer rests leaning up against this statue";
		mySpeaker[i]	= id;
		myTextCol[i]	= [2, c_yellow, 25, c_white];
		
		//Line 1
		i++;
		myText[i]		= "The stone statue is of a young man, smiling with sharp teeth, while resting his hands behind him";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "He's wearing a long cloak, and has a crown poking out from his long hair";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "It looks like he might be some sort of royal";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "Perhaps unsurprisingly, it almost feels like he's looking down on you";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= ["Take the Crystal Hammer", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [6,8];
		myScripts[i]	= [[add_item, 0, "Crystal Hammer", CrystallineHammer, "Crystal Hammer", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 6
		i++;
		myText[i]		= "You grab the crystal hammer and put it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "You got the Crystal Hammer!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 8
		i++;
		myText[i]		= "You decide to leave the crystal hammer for now";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "The young royal still looks down on you";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "It doesn't seem like he has anything esle to offer to you";
		mySpeaker[i]	= id;
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The crystal hammer is still at the base of this royal";
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++;
		myText[i]		= ["Take the Crystal Hammer", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,4];
		myScripts[i]	= [[add_item, 0, "Crystal Hammer", CrystallineHammer, "Crystal Hammer", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 2
		i++;
		myText[i]		= "You grab the crystal hammer and put it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You got the Crystal Hammer!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 4
		i++;
		myText[i]		= "You decide to leave the crystal hammer for now";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}