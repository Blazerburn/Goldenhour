// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function use_item(invItemNeeded, invItemQuips){
	if global.inventoryBag = true {
		if(global.recentlyInteracted == 0)
		{
				global.recentlyInteracted = 20;
		
				global.Immobilize = 1;
				global.shiftText = 1;
	
				with(TestPlayer) {
					global.inventoryOpen = 1;
					global.usingItem = 1;
					global.Talking = 0;
					useQuips = invItemQuips;
					itemNeeded = invItemNeeded;
					show_debug_message(string(itemNeeded));
			
				}
	
				set_song_ingame(sng_inventory, 15)
	
				instance_create_layer(0, 0, "Instances", invItemQuips);
		}
	}
	else {
		if instance_exists(obj_textbox) {
			instance_destroy(obj_textbox)
		}
		create_textevent(
				["You don't have anything you can use"],
				[obj_nochar],
				-1,
				-1,
				-1,
				-1,
				-1,
				[[-1]],
				-1,
				-1,
				-1,
			);
	}
}