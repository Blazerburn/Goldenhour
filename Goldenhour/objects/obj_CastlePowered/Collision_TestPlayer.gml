if global.shiningCityPowered = 1 {
	if activation = 0 {
		create_textevent(
				["Woah... it looks strangely beautiful when it's lit up", 
				"Hopefully that gate is open now"],
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