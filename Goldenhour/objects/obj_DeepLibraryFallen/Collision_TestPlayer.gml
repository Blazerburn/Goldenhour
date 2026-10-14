global.keepTalking = 0;
if activation = 0 {
	create_textevent(
			["Oof", 
			"You push yourself up from the pile of books",
			"As you do, your hand is touching a book",
			"The book begins to glow",
			"You pause and look down at it",
			"It's a red binded book with a golden clock on it",
			"The clock only has the hour hand and it's on the 10th hour",
			"...",
			"You feel a similar way you felt when you got the pouch",
			"You slowly grab it and put it into your bag",
			"You feel like you should give it a read",
			"You got the Secret Book!"],
			-1,
			-1,
			-1,
			-1,
			-1,
			[-1, -1, -1, -1, -1, -1, -1, -1, -1, [add_item, 0, "Secret Book 10th", book10, "Secret Book", 1], -1, -1],
			-1,
			-1,
			-1,
			-1,
			
		);
		
	activation = 1;
}
/*
[TestPlayer, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]
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