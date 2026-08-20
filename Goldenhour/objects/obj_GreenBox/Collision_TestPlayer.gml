if activation = 0 {
	create_textevent(
			["Huh, it looks like a lot of boxes are kept here", 
			"But the top of them is covered with a green... paint?",
			"Who painted them?",
			"It seems like kind of a weird thing to do..."],
			[TestPlayer, TestPlayer, TestPlayer, TestPlayer],
			-1,
			-1,
			-1,
			-1,
			-1,
			[[-1], [38, c_lime, 44, c_white], [-1], [-1]],
			-1,
			-1,
			-1,
		);
	activation = 1;
}