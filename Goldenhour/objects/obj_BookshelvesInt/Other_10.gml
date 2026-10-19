//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A bookshelf with some books in it";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Maybe you should grab one to look at?";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= ["Grab a book", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [-1,-1];
		myScripts[i]	= [[bookshelf_books, 3], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
	#endregion
	break;
	
	case 0:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "0";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "1";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 2:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "2";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 3:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "3";
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 4:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "4";
		mySpeaker[i]	= id;
		
	#endregion
	break;
}