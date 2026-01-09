/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23122061
/// @DnDInput : 5
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "var_1" "facingRight"
/// @DnDArgument : "var_2" "facingLeft"
/// @DnDArgument : "var_3" "facingUp"
/// @DnDArgument : "var_4" "facingDown"
Speed = 3;
facingRight = 0;
facingLeft = 0;
facingUp = 0;
facingDown = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2910A6CC
/// @DnDInput : 9
/// @DnDArgument : "var" "Immobilize"
/// @DnDArgument : "var_1" "recentlyInteracted"
/// @DnDArgument : "var_2" "global.Talking"
/// @DnDArgument : "var_3" "selectionOpen"
/// @DnDArgument : "var_4" "combining"
/// @DnDArgument : "var_5" "infoOpen"
/// @DnDArgument : "var_6" "usingItem"
/// @DnDArgument : "var_7" "itemCheck"
/// @DnDArgument : "var_8" "playerAnimating"
global.Immobilize = 0;
global.recentlyInteracted = 0;
global.Talking = 0;
global.selectionOpen = 0;
global.combining = 0;
global.infoOpen = 0;
global.usingItem = 0;
global.itemCheck = 0;
global.playerAnimating = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3CAFE8F7
/// @DnDInput : 2
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "var_1" "combinedText"
global.inventoryOpen = 0;
combinedText = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23E20EF4
/// @DnDInput : 5
/// @DnDArgument : "expr_4" "2"
/// @DnDArgument : "var" "previousPlayerY"
/// @DnDArgument : "var_1" "playerXMoving"
/// @DnDArgument : "var_2" "playerYMoving"
/// @DnDArgument : "var_3" "previousPlayerX"
/// @DnDArgument : "var_4" "playerDirection"
previousPlayerY = 0;
playerXMoving = 0;
playerYMoving = 0;
previousPlayerX = 0;
playerDirection = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DFC30B0
/// @DnDInput : 6
/// @DnDArgument : "var" "itemCombineType1"
/// @DnDArgument : "var_1" "itemCombineType2"
/// @DnDArgument : "var_2" "itemCombineSelect1"
/// @DnDArgument : "var_3" "itemCombineSelect2"
/// @DnDArgument : "var_4" "itemCombinePos1"
/// @DnDArgument : "var_5" "itemCombinePos2"
itemCombineType1 = 0;
itemCombineType2 = 0;
itemCombineSelect1 = 0;
itemCombineSelect2 = 0;
itemCombinePos1 = 0;
itemCombinePos2 = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2987FAB0
/// @DnDInput : 2
/// @DnDArgument : "value_1" "2"
/// @DnDArgument : "var" "playerMoving"
/// @DnDArgument : "var_1" "globalPlayerDirection"
global.playerMoving = 0;
global.globalPlayerDirection = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13E11024
/// @DnDComment : Inventory Stuff
/// @DnDInput : 8
/// @DnDArgument : "var" "itemPos"
/// @DnDArgument : "var_1" "itemPosIndex"
/// @DnDArgument : "var_2" "rowPos"
/// @DnDArgument : "var_3" "colPos"
/// @DnDArgument : "var_4" "itemSelected"
/// @DnDArgument : "var_5" "placedItem"
/// @DnDArgument : "var_6" "inventorySelectAnimation"
/// @DnDArgument : "var_7" "inventoryItemAnimation"
itemPos = 0;
itemPosIndex = 0;
rowPos = 0;
colPos = 0;
itemSelected = 0;
placedItem = 0;
inventorySelectAnimation = 0;
inventoryItemAnimation = 0;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 12B19703
/// @DnDArgument : "init" "_pos = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_pos < 9"
/// @DnDArgument : "expr" "_pos += 1"
for(var _pos = 0; _pos < 9; _pos += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C18F562
	/// @DnDInput : 4
	/// @DnDParent : 12B19703
	/// @DnDArgument : "expr" "itemNone"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "itemArray[_pos][itemType]"
	/// @DnDArgument : "var_1" "itemArray[_pos][itemSprite]"
	/// @DnDArgument : "var_2" "itemArray[_pos][itemAmount]"
	/// @DnDArgument : "var_3" "itemArray[_pos][itemName]"
	itemArray[_pos][itemType] = itemNone;
	itemArray[_pos][itemSprite] = -1;
	itemArray[_pos][itemAmount] = 0;
	itemArray[_pos][itemName] = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37964A5C
	/// @DnDParent : 12B19703
	/// @DnDArgument : "var" "global.playerFollowers"
	/// @DnDArgument : "value" "1"
	if(global.playerFollowers == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 71B9E06C
		/// @DnDParent : 37964A5C
		/// @DnDArgument : "code" "/// @description Execute Code$(13_10)dir_sprites = [$(13_10)	CondiRightIdle,$(13_10)    CondiBackwardIdle,$(13_10)	CondiLeftIdle,$(13_10)	CondiForwardIdle,$(13_10)];$(13_10)$(13_10)follow_max = 60;$(13_10)follow_coords = [];$(13_10)array_push(follow_coords, {x: x, y: y, playerDirection: playerDirection});$(13_10)$(13_10)instance_create_depth(x, y, depth + 1, TestFollow, { follow_delay: 20 });$(13_10)//instance_create_depth(x, y, depth + 2, TestFollow, { follow_delay: 40 });$(13_10)//instance_create_depth(x, y, depth + 3, TestFollow, { follow_delay: 60 });$(13_10)"
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
		//instance_create_depth(x, y, depth + 3, TestFollow, { follow_delay: 60 });}}