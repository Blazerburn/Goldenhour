//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A large book with a clock on the front of it rests on the desk";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "The clock currently is on the 10th hour";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "...";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "You get a weird feeling looking at this book";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You feel almost... compelled to grab it";
		mySpeaker[i]	= id;

		//Line 5
		i++;
		myText[i]		= "You slowly grab it and put it into your bag";
		myScripts[i]	= [add_item, 0, "Secret Book 10th", book10, "Secret Book", 1];
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You feel like you should give it a read";
		mySpeaker[i]	= id;


		//Line 7
		i++;
		myText[i]		= "You got the Secret Book!";
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"]
		mySpeaker[i]	= id;

		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		
		//Line 0
		myText[i]		= "There's nothing else important on the desk";
		mySpeaker[i]	= id;
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
}