//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "You bring the box over to the thinnest part of the river";
		mySpeaker[i]	= id;
		

		//Line 1
		i++;
		myText[i]		= ["Push the box", "Keep the box"];
		myTypes[i]		= 1;
		myNextLine[i]	= [3,2];
		myScripts[i]	= [[change_variable, id, "puzzleProgress", "1"], [change_variable, id, "choice_variable", "-1"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 2
		i++;
		myText[i]		= "You decide to not push the box into the river for now";
		myNextLine[i]   = -1;
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "With a heavy shove, you push the box into the river";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "Splash";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "The box splashes into the river and wedges itself inbetween the sides";
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You might be able to cross it now";
		myScripts[i]    = [change_variable, id, "choice_variable", "Push"];
		mySpeaker[i]	= id;

		#endregion
	break;
	
	
	case "Push":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The box is wedged in the river";
		mySpeaker[i]	= id;
		
		
		//Line 2
		i++;
		myText[i]		= "You might be able to cross it now";
		mySpeaker[i]	= id;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
		break;
	
	
	case "Alone":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "This part of the river is thinner than the rest of it";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "You could try to jump it";
		mySpeaker[i]	= id;
		
		
		//Line 2
		i++;
		myText[i]		= "But... you don't know what is in the river";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "It would be safer if you had something to walk on";
		mySpeaker[i]	= id;


		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
	
}