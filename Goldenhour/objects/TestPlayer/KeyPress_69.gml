/// @description Insert description here
// You can write your code in this editor
/*show_debug_message(global.usingItem);
show_debug_message(global.inventoryArray);
show_debug_message(itemSelected);
show_debug_message(itemCombinePos1);
show_debug_message(itemCombinePos2);*/

/*if tile_meeting(x, y, "OutsideBuilding") { global.lay_alpha -= 0.05; 
	show_debug_message("Inside building");}
else { global.lay_alpha += 0.05; 
	show_debug_message("Outside Building");}
global.lay_alpha = clamp(global.lay_alpha, 0.25, 1);
show_debug_message(global.lay_alpha);*/

instance_activate_object(obj_Ruins1Puzzle4PressurePlate)

variable_instance_set(obj_Ruins1Puzzle4PressurePlate, "choice_variable", "Used");
					
variable_instance_set(obj_Ruins1Puzzle4PressurePlate, "puzzleProgress", "1");

global.Puzzle4SecondHalf = 1

//room_goto(CastleEntrance)
