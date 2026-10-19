/// @description Insert description here
// You can write your code in this editor
if TPx = true {
	YPos = TestPlayer.y;
	TestPlayer.x = XPos;
	TestPlayer.y = YPos;
}

if TPy = true {
	XPos = TestPlayer.x;
	TestPlayer.x = XPos;
	TestPlayer.y = YPos;
}

if room = rm_Infinite {
	if activation = 0 {
		global.keepWalking = true;
		global.keepTalking = true;
		create_textevent(
				["Um, what?", 
				"How am I..?",
				"This place is going to give me a headache"],
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
		activation = 1;
	}
}