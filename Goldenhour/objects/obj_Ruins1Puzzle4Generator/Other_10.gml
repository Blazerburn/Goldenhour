//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A large unpowered generator looms over you";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "The darkness of the cave fills the edge of your vision";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Large dark rings circle around the center diamond shaped hole";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "Deep in the hole, there seems to be some kind of wire that something could attach to";
		mySpeaker[i]	= id;
		

		//Line 4
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,5];
		myScripts[i]	= [[use_item, "Glowing Rock", Puzzle4GeneratorUsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//Line 5
		i++;
		myText[i]		= "You begin to back away from the generator";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You're not sure what it is";
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "But the generator gives you a weird feeling";
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "You shake it off and walk away";
		mySpeaker[i]	= id;
		#endregion
	break;
	
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "A large unpowered generator looms over you";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Open your bag", "Leave it for now"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,0];
		myScripts[i]	= [[use_item, "Glowing Rock", Puzzle4GeneratorUsingQuips], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}