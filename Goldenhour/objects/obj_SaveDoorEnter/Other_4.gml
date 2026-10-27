if puzzleProgress = 5 {
	puzzleProgress = 2
}
if global.saveDoor = true {
	show_debug_message("Save door true")
	if !(choice_variable = "On") {
		
		choice_variable = "Off"
	}
}