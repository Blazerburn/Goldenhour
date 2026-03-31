// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_item(itemSelected){
	with(TestPlayer) {
		itemArray[itemSelected][itemUses] += -1;
	if(itemArray[itemSelected][itemUses] <= 0)
		{
			itemArray[itemSelected][itemAmount] += -1;
			show_debug_message("No uses")
		}
								
	if(itemArray[itemSelected][itemAmount] <= 0)
		{
			itemArray[itemSelected][itemType] = itemNone;
			show_debug_message("No amount")
		}
}
}