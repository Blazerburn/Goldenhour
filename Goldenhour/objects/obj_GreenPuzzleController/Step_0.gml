//show_debug_message(correctSides)
if correctSides = 48 {
	show_debug_message("Box puzzle complete!")
	if activation = 0 {
	create_textevent(
			["So it spells a green 6", 
			"I think I could've figured that out before finishing it all..."],
			[TestPlayer, TestPlayer],
			-1,
			-1,
			-1,
			-1,
			-1,
			[[-1], [-1]],
			-1,
			-1,
			-1,
		);
	activation = 1;
	}
}
