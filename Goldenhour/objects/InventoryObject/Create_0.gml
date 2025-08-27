/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 588C187C
/// @DnDInput : 2
/// @DnDArgument : "var" "item"
/// @DnDArgument : "option" "itemBall"
/// @DnDArgument : "option_1" "ItemPlant"
item = choose(itemBall, ItemPlant);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2C48D2EB
/// @DnDArgument : "expr" "item"
var l2C48D2EB_0 = item;switch(l2C48D2EB_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 702A5E9A
	/// @DnDParent : 2C48D2EB
	/// @DnDArgument : "const" "itemBall"
	case itemBall:	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1363EDDB
		/// @DnDParent : 702A5E9A
		/// @DnDArgument : "spriteind" "TestSpriteObjectInventory"
		/// @DnDSaveInfo : "spriteind" "TestSpriteObjectInventory"
		sprite_index = TestSpriteObjectInventory;
		image_index = 0;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5227091E
	/// @DnDParent : 2C48D2EB
	/// @DnDArgument : "const" "ItemPlant"
	case ItemPlant:	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7059D18B
		/// @DnDParent : 5227091E
		/// @DnDArgument : "spriteind" "SmallPlantInventory"
		/// @DnDSaveInfo : "spriteind" "SmallPlantInventory"
		sprite_index = SmallPlantInventory;
		image_index = 0;	break;}