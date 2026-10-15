var _vol = global.sfxVolume * global.masterVolume


if (puzzleProgress == -1) {
	instance_deactivate_object(self)
}

if(puzzleProgress == 0)
{
	draw_self()
	
}

if(puzzleProgress == 1 or puzzleProgress == 2)
{
	//global.pressurePlatesActive = 1;
	/*var collision = instance_create_layer(x - 16, y - 16, "Instances", TestWall);
	with(collision) {
		image_xscale = .49;
		image_yscale = .49;
	}*/
	draw_sprite(spr_StoneCrateSmol, -1, x, y-4)
	
	if choice = false {
		//audio_play_sound(sfx_PressurePlateSound, 5, false, _vol)
		with obj_BoxPressurePlate {
			otherActivation = true;
			image_index = 1
			pressurePlateActive = 1
			global.pressurePlatesActive = 1
		}
		choice = true;
	}
	collision = instance_create_layer(x-8, y-8, "Collisions", TestWall)
	collision.image_xscale = .25
	collision.image_yscale = .25
	instance_deactivate_object(obj_Ruins1Puzzle4Gate);
	with(obj_Gate) {
		instance_deactivate_object(self);
		instance_deactivate_object(gateCollision);
		//show_debug_message("Gate Open")
	}
	//show_debug_message("Hide gate")
}

