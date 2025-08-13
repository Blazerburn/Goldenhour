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
/// @DnDInput : 6
/// @DnDArgument : "var" "Immobilize"
/// @DnDArgument : "var_1" "recentlyInteracted"
/// @DnDArgument : "var_2" "global.Talking"
/// @DnDArgument : "var_3" "selectionOpen"
/// @DnDArgument : "var_4" "combining"
/// @DnDArgument : "var_5" "infoOpen"
global.Immobilize = 0;
global.recentlyInteracted = 0;
global.Talking = 0;
global.selectionOpen = 0;
global.combining = 0;
global.infoOpen = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3CAFE8F7
/// @DnDInput : 5
/// @DnDArgument : "expr_3" "1"
/// @DnDArgument : "var" "inventoryOpen"
/// @DnDArgument : "var_1" "selectionX"
/// @DnDArgument : "var_2" "selectionY"
/// @DnDArgument : "var_3" "itemSelected"
/// @DnDArgument : "var_4" "combinedText"
inventoryOpen = 0;
selectionX = 0;
selectionY = 0;
itemSelected = 1;
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

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2987FAB0
/// @DnDInput : 2
/// @DnDArgument : "value_1" "2"
/// @DnDArgument : "var" "playerMoving"
/// @DnDArgument : "var_1" "globalPlayerDirection"
global.playerMoving = 0;
global.globalPlayerDirection = 2;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71B9E06C
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
//instance_create_depth(x, y, depth + 3, TestFollow, { follow_delay: 60 });