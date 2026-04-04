//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A small piece of broken glass sits on the floor";
		mySpeaker[i]	= id;

		
		//Line 1
		i++;
		myText[i]		= "It looks like it was broken off from this mosaic that's in front of you";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "The mosaic is beautiful, you think you should feel bad that it's damaged";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "...";
		myTextSpeed[i]	= [1, 0.3];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "But... for some reason you don't";
		mySpeaker[i]	= id;

		//Line 5
		i++;
		myText[i]		= ["Take the Broken Glass", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [6,10];
		myScripts[i]	= [[add_item, 0, "Broken Glass", BrokenGlassShard, "Broken Glass", 2], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 6
		i++;
		myText[i]		= "You grab the broken glass from the floor and put it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "Ouch!";
		myTextSpeed[i]	= [1, 1.5];
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "It's very sharp!";
		mySpeaker[i]	= id;
		
		//Line 9
		i++;
		myText[i]		= "You got the Broken Glass!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Destroy"];
		mySpeaker[i]	= id;


		//Line 10
		i++;
		myText[i]		= "You decide to leave the broken glass for now";
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
		myText[i]		= "A small piece of broken glass sits on the floor";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Take the Broken Glass", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [2,6];
		myScripts[i]	= [[add_item, 0, "Broken Glass", BrokenGlassShard, "Broken Glass", 2], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 2
		i++;
		myText[i]		= "You grab the broken glass from the floor and put it into your pouch";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "Ouch!";
		myTextSpeed[i]	= [1, 1.5];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "It's very sharp!";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "You got the Broken Glass!";
		myNextLine[i]   = -1;
		myScripts[i]    = [change_variable, id, "choice_variable", "Destroy"];
		mySpeaker[i]	= id;


		//Line 6
		i++;
		myText[i]		= "You decide to leave the broken glass for now";
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}