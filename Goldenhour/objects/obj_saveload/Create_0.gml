/// @description Insert description here
// You can write your code in this editor
global.inventoryArray = 0;
for(var _pos = 0; _pos < 9; _pos += 1) {
	global.inventoryArray[_pos][itemType] = itemNone;
	global.inventoryArray[_pos][itemSprite] = -1;
	global.inventoryArray[_pos][itemAmount] = 0;
	global.inventoryArray[_pos][itemName] = 0;
	global.inventoryArray[_pos][itemUses] = 0;
};

global.levelData =
{ 
	Puzzle1 : 0,
	Puzzle2 : 0,
	Puzzle3 : 0,
	Puzzle4 : 0,
	Puzzle5 : 0,
	Puzzle6 : 0,
	RuinsBar : 0,
	Mosaic : 0,
	RuinsCore : 0,
	HideoutTop : 0,
	HideoutBasement : 0,
	Park : 0,
	PrinceBedroom : 0,
	Rubble : 0,
	Statue : 0,
	RightStreet : 0,
	JamboMeeting : 0,
}

global.roomInstances = 0;
// Array with all of the interactables in it
// Detect which of these in the array exist in the room
// Then collect the puzzle_progress and choice_variable on save
// Load change the variables for those that exist in the load