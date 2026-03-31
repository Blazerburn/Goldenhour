 //---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A golden shine pokes out from under the broken pew";
		mySpeaker[i]	= id;
		myTextCol[i]	= [2, c_yellow, 9, c_white];
		
		//Line 1
		i++;
		myText[i]		= "You reach in and feel something cold and hard";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "You pull it out and find a golden crystal hammer";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= ["Take the Crystal Hammer", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [4,6];
		myTextCol[i]	= [9,c_aqua, 22,c_white];
		myScripts[i]	= [[add_item, 0, "Crystal Hammer", CrystallineHammer, "Crystal Hammer", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 4
		i++;
		myText[i]		= "You grab the crystal hammer and put it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "You got the Crystal Hammer!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 6
		i++;
		myText[i]		= "You decide to leave the crystal hammer for now";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "There's nothing else of interest in the pews";
		mySpeaker[i]	= id;
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The crystal hammer is still in the rubble of the pew";
		mySpeaker[i]	= id;
		
		
		//Line 1
		i++;
		myText[i]		= ["Take the Crystal Hammer", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,4];
		myTextCol[i]	= [9,c_aqua, 22,c_white];
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