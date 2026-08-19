var looking = false;
var _stop = false;
//var _inst = 0;

with TestPlayer {
						if playerDirection = 0 {
							if collision_line(x, y, x, y+16, obj_PushableObject, false, false) {
								looking = true;
								var _inst = collision_line(x, y, x, y+16, obj_PushableObject, false, false);
								//show_debug_message("Looking up")
								//show_debug_message(looking)
							}
						}
						else if playerDirection = 1 {
							if collision_line(x, y+16, x+16, y+16, obj_PushableObject, false, false) {
								looking = true;
								var _inst = collision_line(x, y+16, x+16, y+16, obj_PushableObject, false, false)
								//show_debug_message("Looking right")
								//show_debug_message(looking)
							}
						}
						else if playerDirection = 2 {
							if collision_line(x, y+16, x, y+32, obj_PushableObject, false, false) {
								looking = true;
								var _inst = collision_line(x, y+16, x, y+32, obj_PushableObject, false, false)
								//show_debug_message("Looking down")
								//show_debug_message(looking)
							}
						}
						else if playerDirection = 3 {
							if collision_line(x-16, y+16, x, y+16, obj_PushableObject, false, false) {
								looking = true;
								var _inst = collision_line(x-16, y+16, x, y+16, obj_PushableObject, false, false)
								//show_debug_message("Looking left")
								//show_debug_message(looking)
							}
						}
					}

if collision_rectangle(x+2, y+4, x, y+28, TestPlayer, false, false) {
								pushPlayerDirection = 1
								show_debug_message("Left")
								if collision_rectangle(x, y+8, x-16, y+24, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
							}
							else if collision_rectangle(x+4, y+2, x+28, y, TestPlayer, false, false) {
								pushPlayerDirection = 2
								show_debug_message("Up")
								if collision_rectangle(x+8, y, x+24, y-16, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
							}
							else if collision_rectangle(x+30, y+4, x+32, y+28, TestPlayer, false, false) {
								pushPlayerDirection = 3
								show_debug_message("Right")
								if collision_rectangle(x+32, y+8, x+48, y+24, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
							}
							else if collision_rectangle(x+4, y+30, x+28, y+32, TestPlayer, false, false) {
								pushPlayerDirection = 0
								show_debug_message("Down")
								if collision_rectangle(x+8, y+32, x+24, y+48, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
							}

//show_debug_message(looking)
if looking = true {
	if rectangle_in_rectangle(TestPlayer.x-10, TestPlayer.y+16, TestPlayer.x+10, TestPlayer.y+30, x + 1, y + 1, x + 31, y + 31) {
		if(global.recentlyInteracted == 0)
		{
			if(global.pushingBox == 0)
			{
				if (global.Talking == 0) {
					if _stop == false {
						var l5CF0C4C3_0;
						l5CF0C4C3_0 = keyboard_check_pressed(global.interactKey);
						if (l5CF0C4C3_0)
							{
							var pushableBoxOriginX = x;
							var pushableBoxOriginY = y;
		
							global.playerAnimating = 1;
					
							global.recentlyInteracted = 15;
					
					
							//show_debug_message(looking)
					
							
					
					
							//pushPlayerDirection = global.globalPlayerDirection;
					
							//show_debug_message(string("Pushed Box"));
					
							//show_debug_message(string(global.globalPlayerDirection));
		
							interactedBoxID = _inst;
		
							//show_debug_message(string(interactedBoxID));
		
							global.pushingBox = 1;
		
						}
					}
				}
			}
		}
	
	
	
	
	}




	if(objectID == interactedBoxID)
	{
		with(interactedBoxID) {
			if(global.pushingBox == 1)
	{
		if (global.Talking == 0) {
			instance_deactivate_object(pathCollision);
			instance_deactivate_object(pushBoxCollision);
			var pushableBoxOriginX = x;
				var pushableBoxOriginY = y;
				//show_debug_message(x)
				//show_debug_message(y)
		
				var right = keyboard_check(global.rightKey);
				var left = keyboard_check(global.leftKey);
				var up = keyboard_check(global.upKey);
				var down = keyboard_check(global.downKey);
		
				var xinput = right - left;
				var yinput = down - up;
			
				var _dist = point_distance(0, 0, xinput, yinput);
				if (_dist > 0) {
					xinput /= _dist;
					yinput /= _dist;
				}
			
				//x = floor(x)
				//y = floor(y)
			
				if (pushPlayerDirection == 0 || pushPlayerDirection == 2) {
				move_and_collide(xinput * SlowSpeed, yinput * NormalSpeed, [obj_PushableObject, obj_StuckPuzzleBox],4,0,0,SlowSpeed,NormalSpeed);
				}
				if (pushPlayerDirection == 1 || pushPlayerDirection == 3) {
				move_and_collide(xinput * NormalSpeed, yinput * SlowSpeed, [obj_PushableObject, obj_StuckPuzzleBox],4,0,0,NormalSpeed,SlowSpeed);
				}
			
			
			
				with(pushBoxCollision) {
				x = pushableBoxOriginX + 3;
				y = pushableBoxOriginY + 3;
				}
				/*with(pathCollision) {
				x = pushableBoxOriginX + 8;
				y = pushableBoxOriginY + 8;
				}*/
		
				if(pushPlayerDirection == 0)
	{
		mask_index = PushBoxCollisionDown
		with(TestPlayer) {
		
					x = pushableBoxOriginX + 16;
					y = pushableBoxOriginY + 16;
					}
			
					if(global.playerMoving == 1)
	{
		with(TestPlayer) {
						sprite_index = CondiBackwardWalking;
						}
	}
			
					else
	{
		with(TestPlayer) {
						sprite_index = CondiBackwardIdle;
						}
	}
	}
		
				else
	{
		if(pushPlayerDirection == 1)
	{
		mask_index = PushBoxCollisionLeft
		with(TestPlayer) {
						x = pushableBoxOriginX - 8;
						y = pushableBoxOriginY;
						}
				
						if(global.playerMoving == 1)
	{
		with(TestPlayer) {
							sprite_index = CondiRightWalking;
							}
	}
				
						else
	{
		with(TestPlayer) {
							sprite_index = CondiRightIdle;
							}
	}
	}
			
					else
	{
		if(pushPlayerDirection == 2)
	{
		mask_index = PushBoxCollisionUp
		with(TestPlayer) {
							x = pushableBoxOriginX + 16;
							y = pushableBoxOriginY - 24;
							}
					
							if(global.playerMoving == 1)
	{
		with(TestPlayer) {
								sprite_index = CondiForwardWalking;
								}
	}
					
							else
	{
		with(TestPlayer) {
								sprite_index = CondiForwardIdle;
								}
	}
	}
				
						else
	{
		if(pushPlayerDirection == 3)
	{
		mask_index = PushBoxCollisionRight
		with(TestPlayer) {
								x = pushableBoxOriginX + 40;
								y = pushableBoxOriginY;
								}
						
								if(global.playerMoving == 1)
	{
		with(TestPlayer) {
									sprite_index = CondiLeftWalking;
									}
	}
						
								else
	{
		with(TestPlayer) {
									sprite_index = CondiLeftIdle;
									}
	}
	}
	}
	}
	}
		
				if(global.recentlyInteracted == 0)
	{
		var l35D9AC80_0;
	l35D9AC80_0 = keyboard_check_pressed(global.interactKey);
	if (l35D9AC80_0)
	{
		if (global.keepPushing = 0) {
		global.pushingBox = 0;
						global.playerAnimating = 0;
				
						with(TestPlayer) {
							Speed = 3;
					
							global.recentlyInteracted = 30;
						}
						mask_index = PushBoxB
						interactedBoxID = 0;
					
						instance_activate_object(pushBoxCollision);
						with(pushBoxCollision) {
						x = pushableBoxOriginX + 4;
						y = pushableBoxOriginY + 4;
						//show_debug_message(x)
						//show_debug_message(y)
						}
		}
	}
	}
		}
	}
	else {
		mask_index = PushBoxB
	}
	}
	}
}
//show_debug_message(depth)
update_layer()