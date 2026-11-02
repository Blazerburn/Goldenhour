event_inherited(); //so it will inherit from par_speaker



if choice_variable == 2 or choice_variable == 7 or choice_variable == 12 {
	show_debug_message(choice_variable)
	if global.botanyVol1 = true {
		choice_variable = "Vol1"
	}
}
if choice_variable == 1 or choice_variable == 6 or choice_variable == 11 {
	show_debug_message(choice_variable)
	if global.botanyVol2 = true {
		choice_variable = "Vol2"
	}
}
if choice_variable == 3 or choice_variable == 8 or choice_variable == 13 {
	show_debug_message(choice_variable)
	if global.botanyVol3 = true {
		choice_variable = "Vol3"
	}
}
if choice_variable = 4 or choice_variable == 9 or choice_variable == 14 {
	if global.botanyVol4 = true {
		choice_variable = "Vol4"
	}
}

/*

Other code
codecodecode