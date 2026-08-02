if(global.inventoryOpen == 1)
{
	draw_set_colour(c_white)
	draw_sprite(InventoryInside, itemPosIndex, 0, 0);

	draw_sprite(InventoryStars1, itemPosIndex, 0, 0);

	draw_sprite(InventorySquares, 0, 0, 0);

	draw_sprite(InventoryBorder, 0, 0, 0);

	var inventoryItemX = rowPos * 280;
	var inventoryItemY = colPos * 301;
	var _xx = 201;
	var _yy = 186;
	var itemTitle = itemName;

	draw_sprite(InventorySelect2, inventorySelectAnimation, 101 + inventoryItemX, 101 + inventoryItemY);

	if(global.combining == 1)
{
	draw_sprite(InventorySelect2, inventorySelectAnimation, 101 + combiningItemX, 101 + combiningItemY);
}

	draw_sprite_ext(InventorySquare, 0, 0, 910, 4.95, .45, 0, $FFFFFF & $ffffff, 1);

	draw_sprite_ext(InventorySquare, 0, 0, 0, 4.95, .45, 0, $FFFFFF & $ffffff, 1);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_set_font(fnt_dialogue);

	if(!(itemArray[itemSelected][itemType] == itemNone))
{
	draw_text_transformed(500, 45, "" + string(itemArray[itemSelected][itemName]), 1, 1, 0);
}

	else
{
	draw_text_transformed(500, 45, string("???") + "", 1, 1, 0);
}

	itemPosIndex += .2;
	inventorySelectAnimation += .8;
	inventoryItemAnimation += .1;

	if(global.combining == 1)
{
	draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		draw_text_transformed(125, 932, string("Select which other item you would like to combine") + "", .75, .75, 0);
}

	if(global.usingItem == 1)
{
	draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		draw_text_transformed(500, 932, string("Select which item you want to use") + "", .75, .75, 0);
}

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	for(var i = 0; i < 9; i += 1) {
	if(!(itemArray[i, itemType] == itemNone))
{
	draw_sprite(itemArray[i, itemSprite], inventoryItemAnimation, _xx, _yy);
		
			draw_text(_xx + 76, _yy + 56,  + string(itemArray[i, itemAmount]));
}
	
		_xx += 280;
	
		placedItem += 1;
	
		if(placedItem == 3)
{
	_yy += 301;
			placedItem = 0;
			_xx += -840;
}
	
		if(itemArray[i, itemUses] == 0)
{
	itemArray[i, itemAmount] = 0;
			itemArray[i, itemType] = itemNone;
}
}
}