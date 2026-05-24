/// @description Insert description here
// You can write your code in this editor

draw_self()

if puzzleProgress = 0 {
	emblem = draw_sprite(spr_SaveDoorEmblemOff, -1, x, y)
}

if puzzleProgress = 1 {
	emblem = draw_sprite(spr_SaveUnlockingDoor, _frame, x, y)
	global.Immobilize = 1;
	global.menuOpen = 1;
	if _frame = 10 {
		puzzleProgress = 2;
		_frame = 0;
		choice_variable = "On";
		global.Immobilize = 0;
		global.menuOpen = 0;
	}
}

if puzzleProgress = 2 {
	emblem = draw_sprite(spr_SaveDoorEmblemOn, _frame, x, y)
	if _frame = 7 {
		_frame = 0;
	}
}

if puzzleProgress >> 0 {
	_frame += .1;
}