if rectangle_in_rectangle(TestPlayer.x-10, TestPlayer.y+16, TestPlayer.x+10, TestPlayer.y+30, x + 1, y + 1, x + 31, y + 31) {
	if(global.recentlyInteracted == 0)
	{
		if(global.pushingBox == 0)
		{
			if (global.Talking == 0) {
			var l5CF0C4C3_0;
			l5CF0C4C3_0 = keyboard_check_pressed(global.interactKey);
				if (l5CF0C4C3_0)
					{
					var pushableBoxOriginX = x;
					var pushableBoxOriginY = y;
		
					global.playerAnimating = 1;
					
					global.recentlyInteracted = 15;
					
					if collision_rectangle(x+2, y+8, x-2, y+24, TestPlayer, false, false) {
						pushPlayerDirection = 1
						show_debug_message("Left")
					}
					else if collision_line(x+8, y+2, x+24, y-2, TestPlayer, false, false) {
						pushPlayerDirection = 2
						show_debug_message("Up")
					}
					else if collision_line(x+30, y+8, x+34, y+24, TestPlayer, false, false) {
						pushPlayerDirection = 3
						show_debug_message("Right")
					}
					else if collision_line(x+8, y+30, x+24, y+34, TestPlayer, false, false) {
						pushPlayerDirection = 0
						show_debug_message("Down")
					}
					
					//pushPlayerDirection = global.globalPlayerDirection;
					
					//show_debug_message(string("Pushed Box"));
					
					//show_debug_message(string(global.globalPlayerDirection));
		
					interactedBoxID = objectID;
		
					//show_debug_message(string(interactedBoxID));
		
					global.pushingBox = 1;
		
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
			move_and_collide(xinput * SlowSpeed, yinput * NormalSpeed, [obj_PushableObject],4,0,0,SlowSpeed,NormalSpeed);
			}
			if (pushPlayerDirection == 1 || pushPlayerDirection == 3) {
			move_and_collide(xinput * NormalSpeed, yinput * SlowSpeed, [obj_PushableObject],4,0,0,NormalSpeed,SlowSpeed);
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
					x = pushableBoxOriginX - 16;
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
						y = pushableBoxOriginY - 28;
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
							x = pushableBoxOriginX + 48;
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
//show_debug_message(depth)
update_layer()