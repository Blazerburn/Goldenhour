if(objectID == interactedBoxID)
{
	with(interactedBoxID) {
		if(global.pushingBox == 1)
{
	if (global.Talking == 0) {
	instance_deactivate_object(pathCollision);
	var pushableBoxOriginX = x;
			var pushableBoxOriginY = y;
		
			var right = keyboard_check(ord("D"));
			var left = keyboard_check(ord("A"));
			var up = keyboard_check(ord("W"));
			var down = keyboard_check(ord("S"));
		
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
			move_and_collide(xinput * SlowSpeed, yinput * NormalSpeed, [PushableWall],4,0,0,SlowSpeed,NormalSpeed);
			}
			if (pushPlayerDirection == 1 || pushPlayerDirection == 3) {
			move_and_collide(xinput * NormalSpeed, yinput * SlowSpeed, [PushableWall],4,0,0,NormalSpeed,SlowSpeed);
			}
			
			
			
			with(pushBoxCollision) {
			x = pushableBoxOriginX + 3;
			y = pushableBoxOriginY + 2;
			}
			with(pathCollision) {
			x = pushableBoxOriginX + 3;
			y = pushableBoxOriginY + 2;
			}
		
			if(pushPlayerDirection == 0)
{
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
l35D9AC80_0 = keyboard_check_pressed(vk_space);
if (l35D9AC80_0)
{
	if (global.keepPushing = 0) {
	global.pushingBox = 0;
					global.playerAnimating = 0;
				
					with(TestPlayer) {
						Speed = 3;
					
						global.recentlyInteracted = 30;
					}
				
					interactedBoxID = 0;
				
					show_debug_message(string(interactedBoxID));
					
					instance_activate_object(pathCollision);
					with(pathCollision) {
					x = pushableBoxOriginX + 2;
					y = pushableBoxOriginY + 2;
					}
	}
}
}
	}
}
else {
	
}
}
}

depth = -y;