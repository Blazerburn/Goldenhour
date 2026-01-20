/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 241486A4
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "value" "1"
if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5BBBB194
	/// @DnDParent : 241486A4
	/// @DnDArgument : "sprite" "InventoryInside"
	/// @DnDArgument : "image" "itemPosIndex"
	/// @DnDSaveInfo : "sprite" "InventoryInside"
	draw_sprite(InventoryInside, itemPosIndex, 0, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0D88A40B
	/// @DnDParent : 241486A4
	/// @DnDArgument : "sprite" "InventoryStars1"
	/// @DnDArgument : "image" "itemPosIndex"
	/// @DnDSaveInfo : "sprite" "InventoryStars1"
	draw_sprite(InventoryStars1, itemPosIndex, 0, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3A5BEAF7
	/// @DnDParent : 241486A4
	/// @DnDArgument : "sprite" "InventorySquares"
	/// @DnDSaveInfo : "sprite" "InventorySquares"
	draw_sprite(InventorySquares, 0, 0, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 13EA7810
	/// @DnDParent : 241486A4
	/// @DnDArgument : "sprite" "InventoryBorder"
	/// @DnDSaveInfo : "sprite" "InventoryBorder"
	draw_sprite(InventoryBorder, 0, 0, 0);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 005075B9
	/// @DnDInput : 5
	/// @DnDParent : 241486A4
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
	/// @DnDHash : 79222AF8
	/// @DnDParent : 241486A4
	/// @DnDArgument : "x" "101 + inventoryItemX"
	/// @DnDArgument : "y" "101 + inventoryItemY"
	/// @DnDArgument : "sprite" "InventorySelect2"
	/// @DnDArgument : "image" "inventorySelectAnimation"
	/// @DnDSaveInfo : "sprite" "InventorySelect2"
	draw_sprite(InventorySelect2, inventorySelectAnimation, 101 + inventoryItemX, 101 + inventoryItemY);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FFCA127
	/// @DnDParent : 241486A4
	/// @DnDArgument : "var" "global.combining"
	/// @DnDArgument : "value" "1"
	if(global.combining == 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5ACE2B6A
		/// @DnDParent : 0FFCA127
		/// @DnDArgument : "x" "101 + combiningItemX"
		/// @DnDArgument : "y" "101 + combiningItemY"
		/// @DnDArgument : "sprite" "InventorySelect2"
		/// @DnDArgument : "image" "inventorySelectAnimation"
		/// @DnDSaveInfo : "sprite" "InventorySelect2"
		draw_sprite(InventorySelect2, inventorySelectAnimation, 101 + combiningItemX, 101 + combiningItemY);}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 79028546
	/// @DnDParent : 241486A4
	/// @DnDArgument : "y" "910"
	/// @DnDArgument : "xscale" "4.95"
	/// @DnDArgument : "yscale" ".45"
	/// @DnDArgument : "sprite" "InventorySquare"
	/// @DnDSaveInfo : "sprite" "InventorySquare"
	draw_sprite_ext(InventorySquare, 0, 0, 910, 4.95, .45, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 332BE6B9
	/// @DnDParent : 241486A4
	/// @DnDArgument : "xscale" "4.95"
	/// @DnDArgument : "yscale" ".45"
	/// @DnDArgument : "sprite" "InventorySquare"
	/// @DnDSaveInfo : "sprite" "InventorySquare"
	draw_sprite_ext(InventorySquare, 0, 0, 0, 4.95, .45, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 69C165BD
	/// @DnDParent : 241486A4
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 7CD053A4
	/// @DnDParent : 241486A4
	/// @DnDArgument : "font" "NormalFont"
	/// @DnDSaveInfo : "font" "NormalFont"
	draw_set_font(NormalFont);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45ED2FD2
	/// @DnDParent : 241486A4
	/// @DnDArgument : "var" "itemArray[itemSelected][itemType]"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "itemNone"
	if(!(itemArray[itemSelected][itemType] == itemNone)){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 30C0B37C
		/// @DnDParent : 45ED2FD2
		/// @DnDArgument : "x" "500"
		/// @DnDArgument : "y" "45"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "text" "itemArray[itemSelected][itemName]"
		draw_text_transformed(500, 45, "" + string(itemArray[itemSelected][itemName]), 1, 1, 0);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 66E62ACD
	/// @DnDParent : 241486A4
	else{	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 58C0C728
		/// @DnDParent : 66E62ACD
		/// @DnDArgument : "x" "500"
		/// @DnDArgument : "y" "45"
		/// @DnDArgument : "caption" ""???""
		draw_text_transformed(500, 45, string("???") + "", 1, 1, 0);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18F99E7A
	/// @DnDInput : 3
	/// @DnDParent : 241486A4
	/// @DnDArgument : "expr" ".2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" ".8"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" ".1"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "itemPosIndex"
	/// @DnDArgument : "var_1" "inventorySelectAnimation"
	/// @DnDArgument : "var_2" "inventoryItemAnimation"
	itemPosIndex += .2;
	inventorySelectAnimation += .8;
	inventoryItemAnimation += .1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FC0CC4E
	/// @DnDParent : 241486A4
	/// @DnDArgument : "var" "global.combining"
	/// @DnDArgument : "value" "1"
	if(global.combining == 1){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 31FF6188
		/// @DnDParent : 0FC0CC4E
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1A9E3660
		/// @DnDParent : 0FC0CC4E
		/// @DnDArgument : "x" "125"
		/// @DnDArgument : "y" "932"
		/// @DnDArgument : "xscale" ".75"
		/// @DnDArgument : "yscale" ".75"
		/// @DnDArgument : "caption" ""Select which other item you would like to combine""
		draw_text_transformed(125, 932, string("Select which other item you would like to combine") + "", .75, .75, 0);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FB56F92
	/// @DnDParent : 241486A4
	/// @DnDArgument : "var" "global.usingItem"
	/// @DnDArgument : "value" "1"
	if(global.usingItem == 1){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 58526A49
		/// @DnDParent : 6FB56F92
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 00861C2E
		/// @DnDParent : 6FB56F92
		/// @DnDArgument : "x" "500"
		/// @DnDArgument : "y" "932"
		/// @DnDArgument : "xscale" ".75"
		/// @DnDArgument : "yscale" ".75"
		/// @DnDArgument : "caption" ""Select which item you want to use""
		draw_text_transformed(500, 932, string("Select which item you want to use") + "", .75, .75, 0);}

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 2CA3098A
	/// @DnDParent : 241486A4
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 5565C7FF
	/// @DnDParent : 241486A4
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < 9"
	for(var i = 0; i < 9; i += 1) {	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 32B35F13
		/// @DnDParent : 5565C7FF
		/// @DnDArgument : "var" "itemArray[i, itemType]"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "itemNone"
		if(!(itemArray[i, itemType] == itemNone)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7645DFEC
			/// @DnDParent : 32B35F13
			/// @DnDArgument : "x" "_xx"
			/// @DnDArgument : "y" "_yy"
			/// @DnDArgument : "sprite" "itemArray[i, itemSprite]"
			/// @DnDArgument : "image" "inventoryItemAnimation"
			draw_sprite(itemArray[i, itemSprite], inventoryItemAnimation, _xx, _yy);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 13140BDD
			/// @DnDParent : 32B35F13
			/// @DnDArgument : "x" "_xx + 76"
			/// @DnDArgument : "y" "_yy + 56"
			/// @DnDArgument : "caption" ""
			/// @DnDArgument : "var" "itemArray[i, itemAmount]"
			draw_text(_xx + 76, _yy + 56,  + string(itemArray[i, itemAmount]));}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A848A1C
		/// @DnDParent : 5565C7FF
		/// @DnDArgument : "expr" "280"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "_xx"
		_xx += 280;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19BB075C
		/// @DnDParent : 5565C7FF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "placedItem"
		placedItem += 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01D68A49
		/// @DnDParent : 5565C7FF
		/// @DnDArgument : "var" "placedItem"
		/// @DnDArgument : "value" "3"
		if(placedItem == 3){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 288CAD4A
			/// @DnDInput : 3
			/// @DnDParent : 01D68A49
			/// @DnDArgument : "expr" "301"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_2" "-840"
			/// @DnDArgument : "expr_relative_2" "1"
			/// @DnDArgument : "var" "_yy"
			/// @DnDArgument : "var_1" "placedItem"
			/// @DnDArgument : "var_2" "_xx"
			_yy += 301;
			placedItem = 0;
			_xx += -840;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05FC9E71
		/// @DnDParent : 5565C7FF
		/// @DnDArgument : "var" "itemArray[i, itemUses]"
		if(itemArray[i, itemUses] == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 48E5C77C
			/// @DnDInput : 2
			/// @DnDParent : 05FC9E71
			/// @DnDArgument : "expr_1" "itemNone"
			/// @DnDArgument : "var" "itemArray[i, itemAmount]"
			/// @DnDArgument : "var_1" "itemArray[i, itemType]"
			itemArray[i, itemAmount] = 0;
			itemArray[i, itemType] = itemNone;}}}