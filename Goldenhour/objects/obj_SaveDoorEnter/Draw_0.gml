/// @description Insert description here
// You can write your code in this editor

draw_self()

if puzzleProgress = 0 {
	emblem = draw_sprite(spr_SaveDoorEmblemOff, -1, x, y)
}

if puzzleProgress = 1 {
	emblem = draw_sprite(spr_SaveUnlockingDoor, frame, x, y)
	global.Immobilize = 1;
	global.menuOpen = 1;
	if frame = 10 {
		puzzleProgress = 2;
		frame = 0;
		choice_variable = "On";
		global.Immobilize = 0;
		global.menuOpen = 0;
		create_textevent(
	     [ 
		"The hole is now glowing a golden light",
		"There's some sort of energy coming from the door"
	    ],
	    -1,                                                          //mySpeakers
	    -1,   //myEffects
	    -1,                                                                                            //myTextSpeed
	    -1,                                                                   //myTypes
	    -1,                                                            //myNextLine
	    -1,                                                                                            //myScripts
	    -1,                                                                                            //myTextCol
	    -1,                                                                   //myEmotion
	    -1                                                                                             //myEmote
	    );
		}
}

if puzzleProgress = 2 {
	emblem = draw_sprite(spr_SaveDoorEmblemOn, frame, x, y)
	if frame = 7 {
		frame = 0;
	}
}

if puzzleProgress = 3 {
	var _frame = image_index
	sprite_index = spr_SaveDoorOpening
	image_index = _frame
	puzzleProgress = 4
}

if puzzleProgress >> 0 {
	frame += .1;
}