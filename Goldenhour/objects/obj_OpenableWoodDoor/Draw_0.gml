/// @description Insert description here
// You can write your code in this editor
draw_self()

if choice_variable = "Open" {
	sprite_index = spr_WoodOpeningDoor
	if image_index = 4 {
		choice_variable = "Opened";
	}
	
}

if choice_variable = "Opened" {
	sprite_index = spr_WoodOpenedDoor
	instance_destroy(collision)
}