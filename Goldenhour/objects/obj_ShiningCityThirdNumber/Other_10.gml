//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Okay so this puzzle is just not made yet";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "But it'll be super cool";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "And the final result would show a green number 6";
		myTextCol[i]    = [48, c_green, 50, c_white];
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "I also don't know why the number get's bigger like that";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "Don't ask me";
		mySpeaker[i]	= id;
		
		#endregion
	break;
	
}