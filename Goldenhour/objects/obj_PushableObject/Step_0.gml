var looking = false;
var _stop = false;
var _inst = inst;
var _nextPos = 0;
var _dont = false;
var _blocked = false;


//var _inst = 0;

if global.pushingBox = 0 {
	with TestPlayer {
						if playerDirection = 0 {
							_inst = collision_line(x, y, x, y+16, obj_PushableObject, false, false)
								if _inst {	
								looking = true;
								
								//show_debug_message("Looking up")
								//show_debug_message(looking)
							}
						}
						else if playerDirection = 1 {
							_inst = collision_line(x, y+16, x+16, y+16, obj_PushableObject, false, false) 
								if _inst {	
								looking = true;
								//show_debug_message("Looking right")
								//show_debug_message(looking)
							}
						}
						else if playerDirection = 2 {
							_inst = collision_line(x, y+16, x, y+32, obj_PushableObject, false, false)
								if _inst {	
								looking = true;
								//show_debug_message("Looking down")
								//show_debug_message(looking)
							}
						}
						else if playerDirection = 3 {
							_inst = collision_line(x-16, y+16, x, y+16, obj_PushableObject, false, false) 
								if _inst {	
								looking = true;
								//show_debug_message("Looking left")
								//show_debug_message(looking)
							}
						}
					}


with _inst {
if collision_rectangle(x+2, y+2, x, y+30, TestPlayer, false, false) {
	if TestPlayer.playerDirection = 1 {
								pushPlayerDirection = 1
								//show_debug_message("Left")
	}
								/*with _inst {
								if collision_rectangle(x, y+16, x-20, y+32, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
								}*/
							}
							else if collision_rectangle(x+2, y+2, x+30, y, TestPlayer, false, false) {
								if TestPlayer.playerDirection = 2 {
									pushPlayerDirection = 2
									//show_debug_message("Up")
								}
								/*with _inst {
								if collision_rectangle(x+4, y, x+28, y-12, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
								}*/
							}
							else if collision_rectangle(x+30, y+2, x+32, y+30, TestPlayer, false, false) {
								if TestPlayer.playerDirection = 3 {
									pushPlayerDirection = 3
									//show_debug_message("Right")
								}
								/*with _inst {
								if collision_rectangle(x+32, y+16, x+52, y+28, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
								}*/
							}
							else if collision_rectangle(x+2, y+30, x+30, y+32, TestPlayer, false, false) {
								if TestPlayer.playerDirection = 0 {
									pushPlayerDirection = 0
									//show_debug_message("Down")
								}
								/*with _inst {
								if collision_rectangle(x+4, y+32, x+28, y+44, TestWall, false, false) {
									_stop = true;
									show_debug_message("Space occupied")
								}
								}*/
							}
							
	/*if pushPlayerDirection = 1 {
			if collision_rectangle(x, y+16, x-20, y+32, TestWall, false, false) {
				_stop = true;
				show_debug_message("Space occupied")
			}
		}
		else if pushPlayerDirection = 2 {
			if collision_rectangle(x+4, y, x+28, y-12, TestWall, false, false) {
				_stop = true;
				show_debug_message("Space occupied")
			}
		}
		else if pushPlayerDirection = 3 {
			if collision_rectangle(x+32, y+16, x+52, y+28, TestWall, false, false) {
				_stop = true;
				show_debug_message("Space occupied")
			}
		}
		else if pushPlayerDirection = 0 {
			if collision_rectangle(x+4, y+32, x+28, y+44, TestWall, false, false) {
				_stop = true;
				show_debug_message("Space occupied")
			}
		}*/
}

if greenPuzzle = true {
var _upInst = collision_line(x+16, y, x+16, y+16, obj_PushableObject, false, true)
var _rightInst = collision_line(x+16, y+16, x+32, y+16, obj_PushableObject, false, true)
var _downInst = collision_line(x+16, y+16, x+16, y+32, obj_PushableObject, false, true)
var _leftInst = collision_line(x, y+16, x+16, y+16, obj_PushableObject, false, true)

if (_upInst != noone && _upInst.image_index == image_index - 4) {
    if (!Up) {
        Up = true;
        obj_GreenPuzzleController.correctSides++;
        show_debug_message("Correct up: " + string(obj_GreenPuzzleController.correctSides));
    }
} else {
    if (Up) {
        Up = false;
        obj_GreenPuzzleController.correctSides--;
        show_debug_message("No/Wrong up: " + string(obj_GreenPuzzleController.correctSides));
    }
}

if (_rightInst != noone && _rightInst.image_index == image_index + 1) {
    if (!Right) {
        Right = true;
        obj_GreenPuzzleController.correctSides++;
        show_debug_message("Correct right: " + string(obj_GreenPuzzleController.correctSides));
    }
} else {
    if (Right) {
        Right = false;
        obj_GreenPuzzleController.correctSides--;
        show_debug_message("No/Wrong right: " + string(obj_GreenPuzzleController.correctSides));
    }
}

if (_downInst != noone && _downInst.image_index == image_index + 4) {
    if (!Down) {
        Down = true;
        obj_GreenPuzzleController.correctSides++;
        show_debug_message("Correct down: " + string(obj_GreenPuzzleController.correctSides));
    }
} else {
    if (Down) {
        Down = false;
        obj_GreenPuzzleController.correctSides--;
        show_debug_message("No/Wrong down: " + string(obj_GreenPuzzleController.correctSides));
    }
}

if (_leftInst != noone && _leftInst.image_index == image_index - 1) {
    if (!Left) {
        Left = true;
        obj_GreenPuzzleController.correctSides++;
        show_debug_message("Correct left: " + string(obj_GreenPuzzleController.correctSides));
    }
} else {
    if (Left) {
        Left = false;
        obj_GreenPuzzleController.correctSides--;
        show_debug_message("No/Wrong left: " + string(obj_GreenPuzzleController.correctSides));
    }
}
}
}
//show_debug_message(looking)





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
							var pushableBoxOriginX = x;
							var pushableBoxOriginY = y;
		
							//global.playerAnimating = 1;
					
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
	
	
	
	
	}




	if(_inst == interactedBoxID)
	{
		
		if _stop == false {
		with(interactedBoxID) {
			if(global.pushingBox == 1)
	{
		if (global.Talking == 0) {
			if global.inventoryOpen = 0 {
			if global.menuOpen = 0 {
			//instance_deactivate_object(pathCollision);
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
			
				/*var _dist = point_distance(0, 0, xinput, yinput);
				if (_dist > 0) {
					xinput /= _dist;
					yinput /= _dist;
				}*/
			
				//x = floor(x)
				//y = floor(y)
				
				if collision_line(TestPlayer.x - 24, TestPlayer.y+4, TestPlayer.x, TestPlayer.y+4, obj_PushableObject, false, true) {
					leftBlocked = true;
					show_debug_message("left blocked")
				}
				else {
					leftBlocked = false;
				}
				if collision_line(TestPlayer.x + 24, TestPlayer.y+4, TestPlayer.x, TestPlayer.y+4, obj_PushableObject, false, true) {
					rightBlocked = true;
					show_debug_message("right blocked")
				}
				else {
					rightBlocked = false;
				}
				if collision_line(TestPlayer.x, TestPlayer.y - 20, TestPlayer.x, TestPlayer.y+4, obj_PushableObject, false, true) {
					upBlocked = true;
					show_debug_message("up blocked")
				}
				else {
					upBlocked = false;
				}
				if collision_line(TestPlayer.x, TestPlayer.y + 28, TestPlayer.x, TestPlayer.y+4, obj_PushableObject, false, true) {
					downBlocked = true;
					show_debug_message("down blocked")
				}
				else {
					downBlocked = false;
				}
				
				
				var _frame = image_index
				
				/*with pathCollision {
					if (pushPlayerDirection == 0 || pushPlayerDirection == 2) {
					move_and_collide(xinput * SlowSpeed, yinput * NormalSpeed, [PushableWall],4,0,0,SlowSpeed,NormalSpeed);
					}
					if (pushPlayerDirection == 1 || pushPlayerDirection == 3) {
					move_and_collide(xinput * NormalSpeed, yinput * SlowSpeed, [PushableWall],4,0,0,NormalSpeed,SlowSpeed);
					}
					//prevColX = x;
					
				}
				
				colX = pathCollision.x
				colY = pathCollision.y*/
				
				/*if TestPlayer.playerDirection == 0 {
					_nextPos = y + 3
					if place_meeting(x, _nextPos, PushableWall) {
						_dont = true;
						show_debug_message("Colliding")
					}
				}
				if TestPlayer.playerDirection == 1 {
					_nextPos = x + 3
					if place_meeting(_nextPos, y, PushableWall) {
						_dont = true;
						show_debug_message("Colliding")
					}
				}
				if TestPlayer.playerDirection == 2 {
					_nextPos = y + 29
					if place_meeting(x, _nextPos, PushableWall) {
						_dont = true;
						show_debug_message("Colliding")
					}
				}
				if TestPlayer.playerDirection == 3 {
					_nextPos = x + 29
					if place_meeting(_nextPos, y, PushableWall) {
						_dont = true;
						show_debug_message("Colliding")
					}
				}*/
				
				if _dont = false {
					if global.recentlyInteracted = 0 {
						if global.animating = 0 {
							if global.playerMoving = 1 {
								//global.recentlyInteracted = 30;
							}
							
							//move_and_collide(xinput * 24, yinput * 24, [obj_PushableObject, obj_StuckPuzzleBox, PushableWall, pushCollision],4,0,0,32,32);
							if interacted = false {
								if right {
									if !collision_line(x+28, y+16, x+48, y+16, [obj_PushableObject, PushableWall, pushCollision], false, true) && rightBlocked = false {
										if pushPlayerDirection = 0 {
											sprite_index = anim_PushBoxMoveRight_0 }
										if pushPlayerDirection = 1 {
											sprite_index = anim_PushBoxMoveRight_1 }
										if pushPlayerDirection = 2 {
											sprite_index = anim_PushBoxMoveRight_2 }
										if pushPlayerDirection = 3 {
											sprite_index = anim_PushBoxMoveRight_3 }
										image_index = 0;
										interacted = true;
										global.animating = 1;
										show_debug_message("Right")
										pushDirection = 1;
										show_debug_message(x)
										show_debug_message(y)
										CameraControls(TestPlayer.x+24, TestPlayer.y)
									}
									else {
										show_debug_message("Blocked")
									}
								}
								if up {
									if !collision_line(x+16, y+4, x+16, y-16, [obj_PushableObject, PushableWall, pushCollision], false, true) && upBlocked = false {
										if pushPlayerDirection = 0 {
											sprite_index = anim_PushBoxMoveUp_0 }
										if pushPlayerDirection = 1 {
											sprite_index = anim_PushBoxMoveUp_1 }
										if pushPlayerDirection = 2 {
											sprite_index = anim_PushBoxMoveUp_2 }
										if pushPlayerDirection = 3 {
											sprite_index = anim_PushBoxMoveUp_3 }
										image_index = 0;
										interacted = true;
										global.animating = 1;
										show_debug_message("Up")
										pushDirection = 0;
										show_debug_message(x)
										show_debug_message(y)
										CameraControls(TestPlayer.x, TestPlayer.y-24)
									}
									else {
										show_debug_message("Blocked")
									}
								}
								if left {
									if !collision_line(x+4, y+16, x-16, y+16, [obj_PushableObject, PushableWall, pushCollision], false, true) && leftBlocked = false {
										if pushPlayerDirection = 0 {
											sprite_index = anim_PushBoxMoveLeft_0 }
										if pushPlayerDirection = 1 {
											sprite_index = anim_PushBoxMoveLeft_1 }
										if pushPlayerDirection = 2 {
											sprite_index = anim_PushBoxMoveLeft_2 }
										if pushPlayerDirection = 3 {
											sprite_index = anim_PushBoxMoveLeft_3 }
										image_index = 0;
										interacted = true;
										global.animating = 1;
										show_debug_message("Left")
										pushDirection = 3;
										show_debug_message(x)
										show_debug_message(y)
										CameraControls(TestPlayer.x-24, TestPlayer.y)
									}
									else {
										show_debug_message("Blocked")
									}
								}
								if down {
									if !collision_line(x+16, y+28, x+16, y+48, [obj_PushableObject, PushableWall, pushCollision], false, true) && downBlocked = false {
										if pushPlayerDirection = 0 {
											sprite_index = anim_PushBoxMoveDown_0 }
										if pushPlayerDirection = 1 {
											sprite_index = anim_PushBoxMoveDown_1 }
										if pushPlayerDirection = 2 {
											sprite_index = anim_PushBoxMoveDown_2 }
										if pushPlayerDirection = 3 {
											sprite_index = anim_PushBoxMoveDown_3 }
										image_index = 0;
										interacted = true;
										global.animating = 1;
										show_debug_message("Down")
										pushDirection = 2;
										show_debug_message(x)
										show_debug_message(y)
										CameraControls(TestPlayer.x, TestPlayer.y+24)
									}
									else {
										show_debug_message("Blocked")
									}
								}
							}
							
							/*if _interacted = true {
								if round(_frame) = 14 {
									sprite_index = PushBoxB
									global.animating = 0;
									show_debug_message("Finished animation")
									_interacted = false;
									
								}
							}*/
							
						}
						else if global.animating = 1 {
							//show_debug_message("Animating")
							
							if interacted = true {
								//show_debug_message(round(_frame))
								if round(_frame) < 14 {
									global.animating = 1;
									TestPlayer.visible = false;
									//show_debug_message(round(_frame))
								}
								else {
									if greenPuzzle = true {
										sprite_index = spr_GreenPushBox;
										image_index = image;
									}
									else if greenPuzzle = false {
										sprite_index = PushBoxB;
									}
									
									global.animating = 0;
									show_debug_message("Finished animation")
									if pushDirection = 1 {
										move_and_collide(24, 0, [obj_PushableObject, PushableWall, pushCollision],4,0,0,24,0);
										//CameraControls(TestPlayer.x+24, TestPlayer.y)
									}
									if pushDirection = 0 {
										move_and_collide(0, -24, [obj_PushableObject, PushableWall, pushCollision],4,0,0,0,24);
										//CameraControls(TestPlayer.x, TestPlayer.y-24)
									}
									if pushDirection = 3 {
										move_and_collide(-24, 0, [obj_PushableObject, PushableWall, pushCollision],4,0,0,24,0);
										//CameraControls(TestPlayer.x-24, TestPlayer.y)
									}
									if pushDirection = 2 {
										move_and_collide(0, 24, [obj_PushableObject, PushableWall, pushCollision],4,0,0,0,24);
										//CameraControls(TestPlayer.x, TestPlayer.y+24)
									}
									global.recentlyInteracted = 5;
									TestPlayer.visible = true;
									interacted = false;
								}
								
							}
						}
					}
				}
				
			
				//if place_meeting(x + _nextPos, y, PushableWall)
				
				
			
				//if collision_rectangle(x+4, y+4, x+28, y+28, PushableWall, false, false) {
					
				//}
			
				with(pushBoxCollision) {
				x = pushableBoxOriginX + 4;
				y = pushableBoxOriginY + 16;
				}
				/*with(pathCollision) {
				x = pushableBoxOriginX + 8;
				y = pushableBoxOriginY + 8;
				}*/
		
				if(pushPlayerDirection == 0)
	{
		//mask_index = PushBoxCollisionDown
		with(TestPlayer) {
					//move_and_collide(pushableBoxOriginX + 16,  pushableBoxOriginY + 16, [obj_PushableObject, obj_StuckPuzzleBox],4,0,0,1,1);
					x = pushableBoxOriginX + 16;
					y = pushableBoxOriginY + 16;
					sprite_index = spr_CondiPushingBox_First;
					image_index = 3;
					}
			
			/*		if(global.playerMoving == 1)
	{
		with(TestPlayer) {
						sprite_index = spr_CondiBackwardWalking_Second;
						}
	}
			
					else
	{
		with(TestPlayer) {
						sprite_index = spr_CondiBackwardIdle_Second;
						}
	}*/
	}
		
				else
	{
		if(pushPlayerDirection == 1)
	{
		//mask_index = PushBoxCollisionLeft
		with(TestPlayer) {
						x = pushableBoxOriginX - 8;
						y = pushableBoxOriginY;
						sprite_index = spr_CondiPushingBox_First;
						image_index = 0;
						}
				
		/*				if(global.playerMoving == 1)
	{
		with(TestPlayer) {
							sprite_index = spr_CondiRightWalking_Second;
							}
	}
				
						else
	{
		with(TestPlayer) {
							sprite_index = spr_CondiRightIdle_Second;
							}
	}*/
	}
			
					else
	{
		if(pushPlayerDirection == 2)
	{
		//mask_index = PushBoxCollisionUp
		with(TestPlayer) {
							x = pushableBoxOriginX + 16;
							y = pushableBoxOriginY - 18;
							sprite_index = spr_CondiPushingBox_First;
							image_index = 2;
							}
					
		/*					if(global.playerMoving == 1)
	{
		with(TestPlayer) {
								sprite_index = spr_CondiForwardWalking_Second;
								}
	}
					
							else
	{
		with(TestPlayer) {
								sprite_index = spr_CondiForwardIdle_Second;
								}
	}*/
	}
				
						else
	{
		if(pushPlayerDirection == 3)
	{
		//mask_index = PushBoxCollisionRight
		with(TestPlayer) {
								x = pushableBoxOriginX + 40;
								y = pushableBoxOriginY;
								sprite_index = spr_CondiPushingBox_First;
								image_index = 1;
								}
						/*
								if(global.playerMoving == 1)
	{
		with(TestPlayer) {
									sprite_index = spr_CondiLeftWalking_Second;
									}
	}
						
								else
	{
		with(TestPlayer) {
									sprite_index = spr_CondiLeftIdle_Second;
									}
	}*/
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
		if pushPlayerDirection = 1 {
			if collision_rectangle(x, y+16, x-20, y+26, TestWall, false, false) {
				_stop = true;
				show_debug_message("Space occupied")
			}
		}
		else if pushPlayerDirection = 2 {
			if collision_rectangle(x+6, y, x+26, y-12, TestWall, false, false) {
				_stop = true;
				show_debug_message("Space occupied")
			}
		}
		else if pushPlayerDirection = 3 {
			if collision_rectangle(x+32, y+16, x+52, y+26, TestWall, false, false) {
				_stop = true;
				show_debug_message("Space occupied")
			}
		}
		else if pushPlayerDirection = 0 {
			if collision_rectangle(x+6, y+32, x+26, y+44, TestWall, false, false) {
				_stop = true;
				show_debug_message("Space occupied")
			}
		}
		if _stop = false {
		if (global.keepPushing = 0) {
			if global.animating = 0 {
		global.pushingBox = 0;
						global.playerAnimating = 0;
				global.Immobilize = 0;
				PlayerCamera.player = true;
						with(TestPlayer) {
							Speed = 3;
					
							global.recentlyInteracted = 30;
						}
						//mask_index = PushBoxB
						interactedBoxID = 0;
					
						instance_activate_object(pushBoxCollision);
						with(pushBoxCollision) {
						x = pushableBoxOriginX + 4;
						y = pushableBoxOriginY + 12;
						//show_debug_message(x)
						//show_debug_message(y)
						}
		}
		}
	}
	}
	}
			}
		}
		}
	}
	else {
		//mask_index = PushBoxB
	}
	}
	}
	}
//show_debug_message(depth)

inst = _inst
update_layer()