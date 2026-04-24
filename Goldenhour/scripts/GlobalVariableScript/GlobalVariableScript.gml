global.itemCombiningType1 = 0;
global.itemCombiningType2 = 0;

global.startPlayerDirection = 4;
global.keepPlayerDirection = 0;

global.playerSpawnpointX = 0;
global.playerSpawnpointY = 0;

global.playerX = 0;
global.playerY = 0;

// RoomSpawnpoints
global.Room2SetSpawnpoint = 0;
global.StarterRoomSpawnpoint = 1;
global.PuzzleRoom1Spawnpoint = 0;
global.RoomSpawnpoints = 1;

// Settings
global.masterVolume = 1;
global.musicVolume = 1;
global.sfxVolume = 1;
global.fullscreen = 0;
global.upKey = ord("W");
global.rightKey = ord("D");
global.downKey = ord("S");
global.leftKey = ord("A");
global.interactKey = vk_space;
global.inventoryKey = vk_tab;
global.pauseKey = vk_escape;

// Push Objects
global.pressurePlatesActive = 0;
global.pushingBox = 0;

// Music
global.currentSong = 0;
global.roomSong = 0;

// Environment Specific Events
global.Puzzle4SecondHalf = 0;
global.shiningCityPowered = 0;


global.playerFollowers = 0;
global.shiftText = 0;
global.textEventChoice = 0;
global.inventoryArray = 0
for(var _pos = 0; _pos < 9; _pos += 1) {
	global.inventoryArray[_pos][itemType] = itemNone;
	global.inventoryArray[_pos][itemSprite] = -1;
	global.inventoryArray[_pos][itemAmount] = 0;
	global.inventoryArray[_pos][itemName] = 0;
	global.inventoryArray[_pos][itemUses] = 0;

};