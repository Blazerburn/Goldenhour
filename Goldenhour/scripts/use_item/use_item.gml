// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function use_item(invItemNeeded, invItemQuips){
if(global.recentlyInteracted == 0)
{
		global.recentlyInteracted = 20;
		
		global.Immobilize = 1;
		global.shiftText = 1;
	
		with(TestPlayer) {
			global.inventoryOpen = 1;
			global.usingItem = 1;
			global.Talking = 0;
			itemNeeded = invItemNeeded;
			show_debug_message(string(itemNeeded));
		}
	
		set_song_ingame(sng_inventoryBeginning, 15)
	
		instance_create_layer(0, 0, "Instances", invItemQuips);
}
}