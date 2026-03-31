global.itemCombiningType1 = 0;
global.itemCombiningType2 = 0;

global.startPlayerDirection = 4;
global.keepPlayerDirection = 0;

global.playerSpawnpointX = 0;
global.playerSpawnpointY = 0;

// RoomSpawnpoints
global.Room2SetSpawnpoint = 0;
global.StarterRoomSpawnpoint = 1;
global.PuzzleRoom1Spawnpoint = 0;
global.RoomSpawnpoints = 1;

global.pushingBox = 0;

global.currentSong = 0;
global.roomSong = 0;

global.shiningCityPowered = 0;


global.playerFollowers = 0;
global.shiftText = 0;
global.inventoryArray = 0
for(var _pos = 0; _pos < 9; _pos += 1) {
	global.inventoryArray[_pos][itemType] = itemNone;
	global.inventoryArray[_pos][itemSprite] = -1;
	global.inventoryArray[_pos][itemAmount] = 0;
	global.inventoryArray[_pos][itemName] = 0;
	global.inventoryArray[_pos][itemUses] = 0;

};