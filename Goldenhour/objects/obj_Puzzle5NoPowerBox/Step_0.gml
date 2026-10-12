if activation = 0 {
	if global.pressurePlatesActive >= RuinsPuzzleBoxPuzzleController.boxesNeeded {
		if (global.shiningCityPowered == 0) {
			create_textevent(
				["Weird, it didn't sound like anything happened", 
				"I guess it won't be that easy this time"],
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
		}
		activation = 1;
	}
}