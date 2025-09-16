/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74C0F1D4
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "value" "1"
if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 11F6B8CF
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "sprite" "InventoryInside"
	/// @DnDArgument : "image" "itemPosIndex"
	/// @DnDSaveInfo : "sprite" "InventoryInside"
	draw_sprite(InventoryInside, itemPosIndex, 0, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1D9250B6
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "sprite" "InventoryStars1"
	/// @DnDArgument : "image" "itemPosIndex"
	/// @DnDSaveInfo : "sprite" "InventoryStars1"
	draw_sprite(InventoryStars1, itemPosIndex, 0, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1288B926
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "sprite" "InventorySquares"
	/// @DnDSaveInfo : "sprite" "InventorySquares"
	draw_sprite(InventorySquares, 0, 0, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7434D236
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "sprite" "InventoryBorder"
	/// @DnDSaveInfo : "sprite" "InventoryBorder"
	draw_sprite(InventoryBorder, 0, 0, 0);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B2BEB3D
	/// @DnDInput : 5
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "var" "inventoryItemX"
	/// @DnDArgument : "value" "rowPos * 280"
	/// @DnDArgument : "var_1" "inventoryItemY"
	/// @DnDArgument : "value_1" "colPos * 301"
	/// @DnDArgument : "var_2" "_xx"
	/// @DnDArgument : "value_2" "201"
	/// @DnDArgument : "var_3" "_yy"
	/// @DnDArgument : "value_3" "186"
	/// @DnDArgument : "var_4" "itemTitle"
	/// @DnDArgument : "value_4" "itemName"
	var inventoryItemX = rowPos * 280;
	var inventoryItemY = colPos * 301;
	var _xx = 201;
	var _yy = 186;
	var itemTitle = itemName;

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 71F38909
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "x" "101 + inventoryItemX"
	/// @DnDArgument : "y" "101 + inventoryItemY"
	/// @DnDArgument : "sprite" "InventorySelect2"
	/// @DnDArgument : "image" "inventorySelectAnimation"
	/// @DnDSaveInfo : "sprite" "InventorySelect2"
	draw_sprite(InventorySelect2, inventorySelectAnimation, 101 + inventoryItemX, 101 + inventoryItemY);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 017EA136
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "var" "global.combining"
	/// @DnDArgument : "value" "1"
	if(global.combining == 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 19100074
		/// @DnDParent : 017EA136
		/// @DnDArgument : "x" "101 + combiningItemX"
		/// @DnDArgument : "y" "101 + combiningItemY"
		/// @DnDArgument : "sprite" "InventorySelect2"
		/// @DnDArgument : "image" "inventorySelectAnimation"
		/// @DnDSaveInfo : "sprite" "InventorySelect2"
		draw_sprite(InventorySelect2, inventorySelectAnimation, 101 + combiningItemX, 101 + combiningItemY);}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 394972E1
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "y" "910"
	/// @DnDArgument : "xscale" "4.95"
	/// @DnDArgument : "yscale" ".45"
	/// @DnDArgument : "sprite" "InventorySquare"
	/// @DnDSaveInfo : "sprite" "InventorySquare"
	draw_sprite_ext(InventorySquare, 0, 0, 910, 4.95, .45, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 396A1964
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "xscale" "4.95"
	/// @DnDArgument : "yscale" ".45"
	/// @DnDArgument : "sprite" "InventorySquare"
	/// @DnDSaveInfo : "sprite" "InventorySquare"
	draw_sprite_ext(InventorySquare, 0, 0, 0, 4.95, .45, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 33C9C9F4
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 1227B57A
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "font" "NormalFont"
	/// @DnDSaveInfo : "font" "NormalFont"
	draw_set_font(NormalFont);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5002BEA5
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "itemNone"
	if(!(itemArray[itemSelected][itemType] == itemNone)){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 74E48B49
		/// @DnDParent : 5002BEA5
		/// @DnDArgument : "x" "500"
		/// @DnDArgument : "y" "45"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "text" "itemArray[itemSelected][itemName]"
		draw_text_transformed(500, 45, "" + string(itemArray[itemSelected][itemName]), 1, 1, 0);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6585340A
	/// @DnDParent : 74C0F1D4
	else{	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 53BA7DE5
		/// @DnDParent : 6585340A
		/// @DnDArgument : "x" "500"
		/// @DnDArgument : "y" "45"
		/// @DnDArgument : "caption" ""???""
		draw_text_transformed(500, 45, string("???") + "", 1, 1, 0);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B32E244
	/// @DnDInput : 2
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "expr" ".2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "itemPosIndex"
	/// @DnDArgument : "var_1" "inventorySelectAnimation"
	itemPosIndex += .2;
	inventorySelectAnimation += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33C4D6BA
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "var" "global.combining"
	/// @DnDArgument : "value" "1"
	if(global.combining == 1){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 3E38EF49
		/// @DnDParent : 33C4D6BA
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1FB0F570
		/// @DnDParent : 33C4D6BA
		/// @DnDArgument : "x" "125"
		/// @DnDArgument : "y" "932"
		/// @DnDArgument : "xscale" ".75"
		/// @DnDArgument : "yscale" ".75"
		/// @DnDArgument : "caption" ""Select which other item you would like to combine""
		draw_text_transformed(125, 932, string("Select which other item you would like to combine") + "", .75, .75, 0);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F831442
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "var" "global.usingItem"
	/// @DnDArgument : "value" "1"
	if(global.usingItem == 1){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6E960DDD
		/// @DnDParent : 4F831442
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 15DA025E
		/// @DnDParent : 4F831442
		/// @DnDArgument : "x" "500"
		/// @DnDArgument : "y" "932"
		/// @DnDArgument : "xscale" ".75"
		/// @DnDArgument : "yscale" ".75"
		/// @DnDArgument : "caption" ""Select which item you want to use""
		draw_text_transformed(500, 932, string("Select which item you want to use") + "", .75, .75, 0);}

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 63FA7DBF
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 5FFC7059
	/// @DnDParent : 74C0F1D4
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < 9"
	for(var i = 0; i < 9; i += 1) {	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43717C9C
		/// @DnDParent : 5FFC7059
		/// @DnDArgument : "var" "itemArray[i, itemType]"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "itemNone"
		if(!(itemArray[i, itemType] == itemNone)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 67138E35
			/// @DnDParent : 43717C9C
			/// @DnDArgument : "x" "_xx"
			/// @DnDArgument : "y" "_yy"
			/// @DnDArgument : "sprite" "itemArray[i, itemSprite]"
			draw_sprite(itemArray[i, itemSprite], 0, _xx, _yy);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 59D4C03F
			/// @DnDParent : 43717C9C
			/// @DnDArgument : "x" "_xx + 76"
			/// @DnDArgument : "y" "_yy + 56"
			/// @DnDArgument : "caption" ""
			/// @DnDArgument : "var" "itemArray[i, itemAmount]"
			draw_text(_xx + 76, _yy + 56,  + string(itemArray[i, itemAmount]));}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 72BB2A8F
		/// @DnDParent : 5FFC7059
		/// @DnDArgument : "expr" "280"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "_xx"
		_xx += 280;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49945872
		/// @DnDParent : 5FFC7059
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "placedItem"
		placedItem += 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F94027E
		/// @DnDParent : 5FFC7059
		/// @DnDArgument : "var" "placedItem"
		/// @DnDArgument : "value" "3"
		if(placedItem == 3){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C69DFF9
			/// @DnDInput : 3
			/// @DnDParent : 0F94027E
			/// @DnDArgument : "expr" "301"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_2" "-840"
			/// @DnDArgument : "expr_relative_2" "1"
			/// @DnDArgument : "var" "_yy"
			/// @DnDArgument : "var_1" "placedItem"
			/// @DnDArgument : "var_2" "_xx"
			_yy += 301;
			placedItem = 0;
			_xx += -840;}}}