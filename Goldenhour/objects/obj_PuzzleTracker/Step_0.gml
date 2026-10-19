var _vol = global.sfxVolume * global.masterVolume

// Ruins puzzle room 1
if room = PuzzleRoom1 {
	if global.ruinsPuzzle1 = 0 {
		with RuinsPuzzleBoxPuzzleController {
			if puzzleComplete = true {
				audio_play_sound(sfx_puzzle, 5, false, _vol)
				global.ruinsPuzzle1 = 1;
			}
			else if puzzleComplete = false {
				global.ruinsPuzzle1 = 0;
			}
		}
	}
}

// Ruins puzzle room 2
if room = PuzzleRoom2 {
	if global.ruinsPuzzle2 = 0 {
		with RuinsPuzzleBoxPuzzleController {
			if puzzleComplete = true {
				audio_play_sound(sfx_puzzle, 5, false, _vol)
				global.ruinsPuzzle2 = 1;
			}
			else if puzzleComplete = false {
				global.ruinsPuzzle2 = 0;
			}
		}
	}
}

// Ruins puzzle room 3
if room = PuzzleRoom3 {
	if global.ruinsPuzzle3 = 0 {
		with RuinsPuzzleBoxPuzzleController {
			if puzzleComplete = true {
				audio_play_sound(sfx_puzzle, 5, false, _vol)
				global.ruinsPuzzle3 = 1;
			}
			else if puzzleComplete = false {
				global.ruinsPuzzle3 = 0;
			}
		}
	}
}

// Ruins puzzle room 4
if room = PuzzleRoom4 {
	if global.Puzzle4SecondHalf = 2 {
		if global.ruinsPuzzle4 = 0 {
			audio_play_sound(sfx_puzzle, 5, false, _vol)
			global.ruinsPuzzle4 = 1;
		}
	}
}

// Ruins puzzle room 5
if global.shiningCityPowered = 1 {
	if global.ruinsPuzzle5 = 0 {
		audio_play_sound(sfx_puzzle, 5, false, _vol)
		global.ruinsPuzzle5 = 1;
	}
}

// Ruins puzzle room 6
if room = PuzzleRoom6 {
	if global.ruinsPuzzle6 = 0 {
		with RuinsPuzzleBoxPuzzleController {
			if puzzleComplete = true {
				audio_play_sound(sfx_puzzle, 5, false, _vol)
				global.ruinsPuzzle6 = 1;
			}
			else if puzzleComplete = false {
				global.ruinsPuzzle6 = 0;
			}
		}
	}
}