// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_info(argument){
	instance_create_layer(x, y, "Instances" , InventoryItemInfo);
	variable_global_set("selectionOpen", 0);
	variable_global_set("recentlyInteracted", 3);
	show_debug_message(argument);
	
	with(InventoryItemInfo){

	itemSelectedType = argument;
	
	}
	
}

