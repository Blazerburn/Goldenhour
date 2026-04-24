spd = 2;

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= CondiHeadshot;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "Condi";

myPortraitTalk		= -1;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= -1;

Speed = 3;
facingRight = 0;
facingLeft = 0;
facingUp = 0;
facingDown = 0;

global.Immobilize = 0;
global.recentlyInteracted = 0;
global.Talking = 0;
global.selectionOpen = 0;
global.combining = 0;
global.infoOpen = 0;
global.usingItem = 0;
global.itemCheck = 0;
global.playerAnimating = 0;

global.inventoryOpen = 0;
combinedText = 0;

pauseMenu = "Closed";

previousPlayerY = 0;
playerXMoving = 0;
playerYMoving = 0;
previousPlayerX = 0;
playerDirection = 2;

itemCombineType1 = 0;
itemCombineType2 = 0;
itemCombineSelect1 = 0;
itemCombineSelect2 = 0;
itemCombinePos1 = 0;
itemCombinePos2 = 0;

global.playerMoving = 0;
global.globalPlayerDirection = 2;

_colliding = "False"

// Inventory Stuff
itemPos = 0;
itemPosIndex = 0;
rowPos = 0;
colPos = 0;
itemSelected = 0;
placedItem = 0;
inventorySelectAnimation = 0;
inventoryItemAnimation = 0;
itemSelection_x = 0;
itemSelection_y = 0;

for(var _pos = 0; _pos < 9; _pos += 1) {
	itemArray[_pos][itemType] = itemNone;
	itemArray[_pos][itemSprite] = -1;
	itemArray[_pos][itemAmount] = 0;
	itemArray[_pos][itemName] = 0;
	itemArray[_pos][itemUses] = 0;
}

create_instance_layer(x, y, "Instances", PlayerCamera);

if(global.playerFollowers == 1)
{
	/// @description Execute Code
	dir_sprites = [
		CondiRightIdle,
	    CondiBackwardIdle,
		CondiLeftIdle,
		CondiForwardIdle,
	];
	
	follow_max = 60;
	follow_coords = [];
	array_push(follow_coords, {x: x, y: y, playerDirection: playerDirection});
	
	instance_create_depth(x, y, depth + 1, TestFollow, { follow_delay: 20 });
	//instance_create_depth(x, y, depth + 2, TestFollow, { follow_delay: 40 });
	//instance_create_depth(x, y, depth + 3, TestFollow, { follow_delay: 60 });
}