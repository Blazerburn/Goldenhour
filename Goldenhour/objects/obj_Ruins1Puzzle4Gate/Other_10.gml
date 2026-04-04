//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "The gate is still closed";
		myScripts[i]	= [change_variable, id, "puzzleProgress", "1"];
		mySpeaker[i]	= id;
		
		
	#endregion
	break;
}