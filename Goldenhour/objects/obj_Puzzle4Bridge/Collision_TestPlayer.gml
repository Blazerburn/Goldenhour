if activation = 0 {
	create_textevent(
			["There's a gate across the river", 
			"I need to figure out some way to get across"],
			[TestPlayer, TestPlayer],
			-1,
			-1,
			-1,
			-1,
			[-1, [change_variable, PlayerCamera, "player", "true"]],
			[[-1], [-1]],
			-1,
			-1,
			-1,
		);
	
	CameraControls(576, 192)
	
	activation = 1;
}