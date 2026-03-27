//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "A glowing blue light pokes through the cracks of the box";
		mySpeaker[i]	= id;
		myTextCol[i]	= [2, c_aqua, 15, c_white];
		
		
		//Line 1
		i++;
		myText[i]		= "There's an audible click as the box opens";
		myEffects[i]	= [20,1, 25,0];
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "You lift the lid off the box and reach in to grab it";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "It's a blue glowing rock shaped like a four pointed star";
		mySpeaker[i]	= id;
		myTextCol[i]	= [7, c_aqua, 25, c_white];

		//Line 4
		i++;
		myText[i]		= "You're not sure why, but you feel a strong energy coming from it";
		mySpeaker[i]	= id;


		//Line 5
		i++;
		myText[i]		= ["Take the Glowing Rock", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [6,9];
		myTextCol[i]	= [9,c_aqua, 22,c_white];
		myScripts[i]	= [[add_item, 0, "Glowing Rock", BioluminescentRock, "Glowing Rock", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;

		//Line 6
		i++;
		myText[i]		= "You grab the glowing rock and put it into your pouch";
		myTextCol[i]	= [13,c_aqua, 26,c_white];
		mySpeaker[i]	= id;
		
		//Line 7
		i++;
		myText[i]		= "You can still feel the energy from when you held it";
		mySpeaker[i]	= id;
		
		//Line 8
		i++;
		myText[i]		= "You got the Glowing Rock!";
		myNextLine[i]   = -1;
		myTextCol[i]	= [12,c_aqua, 25,c_white];
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;


		//Line 9
		i++;
		myText[i]		= "You decide to leave the glowing rock for now";
		myTextCol[i]	= [24,c_aqua, 37,c_white];
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "Take":
	#region If you chose green
		var i = 0;
		//Line 11
		myText[i]		= "The box is empty now";
		myTextSpeed[i]	= [1, 0.3];
		mySpeaker[i]	= id;
		

		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "Leave":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "The glowing rock still sits within the box";
		mySpeaker[i]	= id;
		myTextCol[i]	= [4,c_aqua, 17,c_white];
		
		//Line 1
		i++;
		myText[i]		= "An energy radiates from it";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= ["Take the Glowing Rock", "Leave it"];
		myTypes[i]		= 1;
		myNextLine[i]	= [3,6];
		myTextCol[i]	= [9,c_aqua, 22,c_white];
		myScripts[i]	= [[add_item, 0, "Glowing Rock", BioluminescentRock, "Glowing Rock", 1], [change_variable, id, "choice_variable", "Leave"]];
		mySpeaker[i]	= TestPlayer;
		
		//Line 3
		i++;
		myText[i]		= "You grab the glowing rock and put it into your pouch";
		myTextCol[i]	= [13,c_aqua, 26,c_white];
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "You can still feel the energy from when you held it";
		mySpeaker[i]	= id;
		
		//Line 5
		i++;
		myText[i]		= "You got the Glowing Rock!";
		myNextLine[i]   = -1;
		myTextCol[i]	= [12,c_aqua, 25,c_white];
		myScripts[i]    = [change_variable, id, "choice_variable", "Take"];
		mySpeaker[i]	= id;
		
		//Line 6
		i++;
		myText[i]		= "You decide to leave the glowing rock for now";
		myTextCol[i]	= [24,c_aqua, 37,c_white];
		mySpeaker[i]	= id;
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}