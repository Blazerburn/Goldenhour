/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A0A3FC5
/// @DnDInput : 3
/// @DnDArgument : "expr" ""Grab the ball""
/// @DnDArgument : "expr_1" ""Ignore it""
/// @DnDArgument : "expr_2" """"
/// @DnDArgument : "var" "text1"
/// @DnDArgument : "var_1" "text2"
/// @DnDArgument : "var_2" "text3"
text1 = "Grab the ball";
text2 = "Ignore it";
text3 = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4281F946
/// @DnDInput : 5
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_2" "100"
/// @DnDArgument : "expr_3" "725 + (100 * textCurrent)"
/// @DnDArgument : "expr_4" "3"
/// @DnDArgument : "var" "textCurrent"
/// @DnDArgument : "var_1" "textLast"
/// @DnDArgument : "var_2" "textX"
/// @DnDArgument : "var_3" "textY"
/// @DnDArgument : "var_4" "lineAmount"
textCurrent = 0;
textLast = 1;
textX = 100;
textY = 725 + (100 * textCurrent);
lineAmount = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46456BEA
/// @DnDInput : 6
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_4" "1"
/// @DnDArgument : "expr_5" "2 - textLimitBottom"
/// @DnDArgument : "var" "textSelected"
/// @DnDArgument : "var_1" "textMax"
/// @DnDArgument : "var_2" "textMin"
/// @DnDArgument : "var_3" "textLimitTop"
/// @DnDArgument : "var_4" "textLimitBottom"
/// @DnDArgument : "var_5" "textPastLimitBottom"
textSelected = 0;
textMax = 1;
textMin = 0;
textLimitTop = 0;
textLimitBottom = 1;
textPastLimitBottom = 2 - textLimitBottom;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0BDED288
/// @DnDInput : 2
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_1" "1"
/// @DnDArgument : "var" "global.Immobilize"
/// @DnDArgument : "var_1" "global.Talking"
global.Immobilize = 1;
global.Talking = 1;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 42B9EF1D
/// @DnDInput : 2
/// @DnDArgument : "var" "item"
/// @DnDArgument : "option" "itemBall"
/// @DnDArgument : "option_1" "ItemPlant"
item = choose(itemBall, ItemPlant);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7724E3DE
/// @DnDArgument : "expr" "item"
var l7724E3DE_0 = item;switch(l7724E3DE_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6CBB04BC
	/// @DnDParent : 7724E3DE
	/// @DnDArgument : "const" "itemBall"
	case itemBall:	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3D86B7A0
		/// @DnDParent : 6CBB04BC
		/// @DnDArgument : "spriteind" "TestSpriteObjectInventory"
		/// @DnDSaveInfo : "spriteind" "TestSpriteObjectInventory"
		sprite_index = TestSpriteObjectInventory;
		image_index = 0;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3B4582D8
	/// @DnDParent : 7724E3DE
	/// @DnDArgument : "const" "ItemPlant"
	case ItemPlant:	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 263CCF70
		/// @DnDParent : 3B4582D8
		/// @DnDArgument : "spriteind" "SmallPlantInventory"
		/// @DnDSaveInfo : "spriteind" "SmallPlantInventory"
		sprite_index = SmallPlantInventory;
		image_index = 0;	break;}