global.keepWalking = true;
global.keepTalking = true;

if activation = 0 {
	activation = 1;
	create_textevent(
			["Woah...", 
			"What is this place?",
			"This feels like a weird dream"],
			[TestPlayer, TestPlayer, TestPlayer],
			-1,
			-1,
			-1,
			-1,
			-1,
			[[-1], [-1], [-1]],
			-1,
			-1,
			-1,
		);
	
}