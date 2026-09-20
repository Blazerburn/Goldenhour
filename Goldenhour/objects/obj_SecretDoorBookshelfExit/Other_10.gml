//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "It's really dark so it's hard to tell";
		mySpeaker[i]	= id;
		myScripts[i]    = [change_variable, id, "choice_variable", "Interacted"]
		
		//Line 1
		i++;
		myText[i]		= "But it looks like the back of one of the bookshelves";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Maybe it could be pushed?";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= ["Push the bookshelf", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [4,5];
		myScripts[i]	= [[change_variable, id, "choice_variable", "Push"], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 4
		i++;
		myText[i]		= "You push the bookshelf as hard as you can";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "You decide you'll look somewhere else";
		mySpeaker[i]	= id;
	#endregion
	break;

	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		i++;
		myText[i]		= ["Push the bookshelf", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [1,2];
		myScripts[i]	= [[change_variable, id, "choice_variable", "Push"], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 1
		i++;
		myText[i]		= "You push the bookshelf as hard as you can";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "You decide you'll look somewhere else";
		mySpeaker[i]	= id;
	#endregion
	break;
}