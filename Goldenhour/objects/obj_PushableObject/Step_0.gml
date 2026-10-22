var looking = false;
var _stop = false;
var _inst = inst;
var _nextPos = 0;
var _dont = false;


if global.pushingBox = 0 {
	with TestPlayer {
						if playerDirection = 0 {
							_inst = collision_line(x, y, x, y+16, obj_PushableObject, false, false)
								if _inst {	
								looking = true;
								
								show_debug_message("Looking up")
								//show_debug_message(looking)
							}
						}
						else if playerDirection = 1 {
							_inst = collision_line(x, y+16, x+16, y+16, obj_PushableObject, false, false) 
								if _inst {	
								looking = true;
								show_debug_message("Looking right")
								//show_debug_message(looking)
							}
						}
						else if playerDirection = 2 {
							_inst = collision_line(x, y+16, x, y+32, obj_PushableObject, false, false)
								if _inst {	
								looking = true;
								show_debug_message("Looking down")
								//show_debug_message(looking)
							}
						}
						else if playerDirection = 3 {
							_inst = collision_line(x-16, y+16, x, y+16, obj_PushableObject, false, false) 
								if _inst {	
								looking = true;
								show_debug_message("Looking left")
								//show_debug_message(looking)
							}
						}
					}


with _inst {
if collision_rectangle(x+2, y+4, x, y+28, TestPlayer, false, false) {
								pushPlayerDirection = 1
								show_debug_message("Left")
								/*with _inst {
								if collision_rectangle(x, y+16, x-20, y+32, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
								}*/
							}
							else if collision_rectangle(x+4, y+2, x+28, y, TestPlayer, false, false) {
								pushPlayerDirection = 2
								show_debug_message("Up")
								/*with _inst {
								if collision_rectangle(x+4, y, x+28, y-12, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
								}*/
							}
							else if collision_rectangle(x+30, y+4, x+32, y+28, TestPlayer, false, false) {
								pushPlayerDirection = 3
								show_debug_message("Right")
								/*with _inst {
								if collision_rectangle(x+32, y+16, x+52, y+28, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
								}*/
							}
							else if collision_rectangle(x+4, y+30, x+28, y+32, TestPlayer, false, false) {
								pushPlayerDirection = 0
								show_debug_message("Down")
								/*with _inst {
								if collision_rectangle(x+4, y+32, x+28, y+44, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
								}*/
							}
							
}
}

if rectangle_in_rectangle(TestPlayer.x-10, TestPlayer.y+16, TestPlayer.x+10, TestPlayer.y+30, x + 1, y + 1, x + 31, y + 31) {
		if(global.recentlyInteracted == 0)
		{
			if(global.pushingBox == 0)
			{
				if looking = true {
				if (global.Talking == 0) {
					if _stop == false {
						var l5CF0C4C3_0;
						l5CF0C4C3_0 = keyboard_check_pressed(global.interactKey);
						if (l5CF0C4C3_0)
							{

		
							global.playerAnimating = 1;
					
							global.recentlyInteracted = 15;
					
					
							//show_debug_message(looking)
							
							interactedBoxID = _inst;
							
							with interactedBoxID {
						
								if (pushPlayerDirection == 0) {
									move_and_collide(0, -32, [obj_PushableObject, obj_StuckPuzzleBox, PushableWall, pushCollision],4,0,0,0,32);
								}
								if (pushPlayerDirection == 2) {
									move_and_collide(0, 32, [obj_PushableObject, obj_StuckPuzzleBox, PushableWall, pushCollision],4,0,0,0,32);
								}
								if (pushPlayerDirection == 1) {
									move_and_collide(32, 0, [obj_PushableObject, obj_StuckPuzzleBox, PushableWall, pushCollision],4,0,0,32,0);
								}
								if (pushPlayerDirection == 3) {
									move_and_collide(-32, 0, [obj_PushableObject, obj_StuckPuzzleBox, PushableWall, pushCollision],4,0,0,32,0);
								}
							
								var pushableBoxOriginX = x;
								var pushableBoxOriginY = y;
							
								show_debug_message(pushableBoxOriginX)
								show_debug_message(pushableBoxOriginY)
							
								with(pushBoxCollision) {
									x = pushableBoxOriginX + 4;
									y = pushableBoxOriginY + 4;
								}
							}
					
							//pushPlayerDirection = global.globalPlayerDirection;
							
							
							
							
							show_debug_message(string("Pushed Box"));
					
							//show_debug_message(string(global.globalPlayerDirection));
		
							
		
							//show_debug_message(string(interactedBoxID));
		
							global.pushingBox = 1;
		
						}
					}
				}
				}
			}
		}
	}



inst = _inst
update_layer()