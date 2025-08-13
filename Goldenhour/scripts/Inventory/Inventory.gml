// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inventory(){
	var testObject = "Ball";
	var plantObject = "Plant";
	var combinedObect = "Ball Plant";
	
	var inventory = new MagpieInventory();
	
	var print_inventory = function(inventory) {
        show_debug_message("inventory contents:");
        var contents = inventory.PocketContentsByGeneric();
        for (var i = 0; i < array_length(contents); i++) {
            show_debug_message("    " + contents[i].item);
        }
    }
	
	var print_inventory_pocket = function(inventory, pocket) {
        show_debug_message(string(pocket) + " contents:");
        var contents = inventory.PocketContentsByGeneric(pocket, function(a, b) {
            return a.item > b.item;
        });
        for (var i = 0; i < array_length(contents); i++) {
            show_debug_message("    " + contents[i].item + ((contents[i].quantity > 1) ? (" x " + string(contents[i].quantity)) : ""));
        }
    }
	
	
	
	
	
	
}

Inventory();