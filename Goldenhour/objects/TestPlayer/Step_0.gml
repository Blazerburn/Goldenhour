//if(instance_exists(obj_textbox)) exit;

//input_left		= keyboard_check(vk_left);
//input_right		= keyboard_check(vk_right);
//input_up		= keyboard_check(vk_up);
//input_down		= keyboard_check(vk_down);
//input_run		= keyboard_check(vk_shift);
//input_walk		= keyboard_check(vk_control);

//---------RESET MOVEMENT VARIABLES
//moveX = 0; 
//moveY = 0;

//---------GET INTENDED MOVEMENT
//var right = (input_right - input_left);
//var left = (input_down - input_up);
//if(right != 0 or left != 0){
//	var dir = point_direction(x,y, x+right, y+left);
//	moveX = lengthdir_x(spd, dir);
//	moveY = lengthdir_y(spd, dir);
//}

//---------APPLY MOVEMENT
//x += moveX;
//y += moveY;

selectionX = 0;
selectionY = 0;

var playerX = x;
var playerY = y;

if(global.startPlayerDirection == 0)
{
	playerDirection = 0;
}

else
{
	if(global.startPlayerDirection == 1)
{
	playerDirection = 1;
}

	else
{
	if(global.startPlayerDirection == 2)
{
	playerDirection = 2;
}
	
		else
{
	if(global.startPlayerDirection == 3)
{
	playerDirection = 3;
}
}
}
}

if(playerX != previousPlayerX)
{
	playerXMoving = 1;

	global.playerMoving = 1;
}

else
{
	if(playerYMoving == 0)
{
	global.playerMoving = 0;
}

	playerXMoving = 0;

	if(playerY != previousPlayerY)
{
	playerYMoving = 1;
	
		global.playerMoving = 1;
}

	else
{
	if(playerXMoving == 0)
{
	global.playerMoving = 0;
}
	
		playerYMoving = 0;
}
}

if(global.Immobilize == 0)
{
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

	//x = round(x)
	//y = round(y)

	move_and_collide(xinput * Speed, yinput * Speed, [TestWall, TestAngleWall],4,0,0,Speed,Speed);
	
	

	var l601DB0A5_0;
l601DB0A5_0 = keyboard_check_pressed(global.upKey);
if (l601DB0A5_0)
{
	global.startPlayerDirection = 4;
	
		playerDirection = 0;
	
		global.globalPlayerDirection = 0;
}

	var l36039074_0;
l36039074_0 = keyboard_check_pressed(global.rightKey);
if (l36039074_0)
{
	global.startPlayerDirection = 4;
	
		playerDirection = 1;
	
		global.globalPlayerDirection = 1;
}

	var l3BA31F1F_0;
l3BA31F1F_0 = keyboard_check_pressed(global.downKey);
if (l3BA31F1F_0)
{
	global.startPlayerDirection = 4;
	
		playerDirection = 2;
	
		global.globalPlayerDirection = 2;
}

	var l6FE386E6_0;
l6FE386E6_0 = keyboard_check_pressed(global.leftKey);
if (l6FE386E6_0)
{
	global.startPlayerDirection = 4;
	
		playerDirection = 3;
	
		global.globalPlayerDirection = 3;
}

	var l74A54030_0;
l74A54030_0 = keyboard_check_released(global.upKey or global.rightKey or global.downKey or global.leftKey);
if (l74A54030_0)
{
	var l7BDD122B_0;
l7BDD122B_0 = keyboard_check(global.upKey);
if (l7BDD122B_0)
{
	playerDirection = 0;
		
			global.globalPlayerDirection = 0;
}
	
		var l28D13ED9_0;
l28D13ED9_0 = keyboard_check(global.rightKey);
if (l28D13ED9_0)
{
	playerDirection = 1;
		
			global.globalPlayerDirection = 1;
}
	
		var l31249281_0;
l31249281_0 = keyboard_check(global.downKey);
if (l31249281_0)
{
	playerDirection = 2;
		
			global.globalPlayerDirection = 2;
}
	
		var l62652CE5_0;
l62652CE5_0 = keyboard_check(global.leftKey);
if (l62652CE5_0)
{
	playerDirection = 3;
		
			global.globalPlayerDirection = 3;
}
}

	if(global.playerAnimating == 0)
{
	if(global.playerMoving == 0)
{
	if(playerDirection == 0)
{
	sprite_index = CondiBackwardIdle;
}
		
			if(playerDirection == 1)
{
	sprite_index = CondiRightIdle;
}
		
			if(playerDirection == 2)
{
	sprite_index = CondiForwardIdle;
}
		
			if(playerDirection == 3)
{
	sprite_index = CondiLeftIdle;
}
}
	
		else
{
	if(global.playerMoving == 1)
{
	if(playerDirection == 0)
{
	sprite_index = CondiBackwardWalking;
}
			
				if(playerDirection == 1)
{
	sprite_index = CondiRightWalking;
}
			
				if(playerDirection == 2)
{
	sprite_index = CondiForwardWalking;
}
			
				if(playerDirection == 3)
{
	sprite_index = CondiLeftWalking;
}
}
}
}
}

if(global.Immobilize == 1)
{
	if(playerDirection == 0)
{
	sprite_index = CondiBackwardIdle;
}

	if(playerDirection == 1)
{
	sprite_index = CondiRightIdle;
}

	if(playerDirection == 2)
{
	sprite_index = CondiForwardIdle;
}

	if(playerDirection == 3)
{
	sprite_index = CondiLeftIdle;
}
}

if(global.recentlyInteracted > 1)
{
	global.recentlyInteracted += -1;

	show_debug_message(string(global.recentlyInteracted));

	if(global.recentlyInteracted == 2)
{
	global.recentlyInteracted += -2;
	
		show_debug_message(string(global.recentlyInteracted));
}
}

if(global.keepPlayerDirection == 1)
{
	if(playerDirection == 0)
{
	global.startPlayerDirection = 0;
}

	else
{
	if(playerDirection == 1)
{
	global.startPlayerDirection = 1;
}
	
		else
{
	if(playerDirection == 2)
{
	global.startPlayerDirection = 2;
}
		
			else
{
	if(playerDirection == 3)
{
	global.startPlayerDirection = 3;
}
}
}
}
}

with(InventorySelectObject) {
var selectionX = x;
var selectionY = y;
}

previousPlayerX = xprevious;
previousPlayerY = yprevious;

// Specific Depth Controller
if !place_meeting(x, y, obj_SpecificDepthCollision) {
	
	with (obj_SpecificDepthController) {
		//show_debug_message("Not Colliding")
		colliding = 0;
	}
}


if place_meeting(x, y, obj_SpecificDepthCollision) {
	
	with (obj_SpecificDepthController) {
		//show_debug_message("Colliding")
		colliding = 1;
	}
}

// Collision Change Controller
/*if !place_meeting(x, y, obj_CollisionChangeCollision) {
	
	with (obj_CollisionChangeController) {
		show_debug_message("Not Colliding")
		colliding = 0;
	}
}*/

if place_meeting(x, y, obj_CollisionChangeCollision) {
	if _colliding = "False" {
		with (obj_CollisionChangeController) {
			if colliding = 0 {
				show_debug_message("Colliding")
				colliding = 1;
			}
			else if colliding = 1 {
				show_debug_message("Not Colliding")
				colliding = 0;
			}
		}
		_colliding = "True"
	}
}
else {
	_colliding = "False"
}

// Opening/Closing Inventory
if keyboard_check_pressed(global.inventoryKey) {
	if(global.inventoryOpen == 0)
	{
		if(global.Talking == 0)
		{
		
				set_song_ingame(sng_inventory, 15, 0, 24)
	
				global.inventoryOpen = 1;
				global.shiftText = 1;
	
				global.Immobilize = 1;
	
				show_debug_message(string(itemArray));
		}
	}

	else
	{
		if(global.combining == 0)
		{
			if(global.selectionOpen == 0)
			{
				if(global.Talking == 0)
				{
					if(global.infoOpen == 0)
					{
						global.inventoryOpen = 0;
						reset_room_song()
						global.Immobilize = 0;
						global.usingItem = 0;
					}
								else
					{
						global.infoOpen = 0;
					}
				}
			}
				else
			{
				global.selectionOpen = 0;
			}
		}
			else
		{
			global.combining = 0;
		
			itemCombineSelect1 = 0;
			itemCombineSelect2 = 0;
			itemCombinePos1 = 0;
			itemCombinePos2 = 0;
			itemCombineType1 = 0;
			itemCombineType2 = 0;
		}
	}
}

// Interacting with menus mostly
if keyboard_check_pressed(global.interactKey) {
		if(global.recentlyInteracted == 0)
	{
		if(global.selectionOpen == 0)
	{
			if(global.infoOpen == 0)
		{
				if(global.Talking == 0)
			{
					if(global.inventoryOpen == 1)
				{
						if(global.combining == 0)
					{
							if(global.usingItem == 0)
						{
								if(!(itemArray[itemSelected][itemType] == itemNone))
							{
								global.selectionOpen = 1;
							
								global.recentlyInteracted = 20;
							
								itemSelection_x = 101 + rowPos * 280;
								itemSelection_y = 101 + colPos * 301;
							
									
							
								var _selected = itemArray[itemSelected][itemType];
							
												
								create_textevent(
								    [ 
									["Combine", "Info", "Cancel"]
									],
								    -1,                                                          //mySpeakers
								    -1,   //myEffects
								    -1,                                                                                            //myTextSpeed
								    [1],                                                                   //myTypes
								    -1,                                                            //myNextLine
								    [[[combining, id], [item_info, _selected], [change_globalvariable, "selectionOpen", 0]]],                                                                                            //myScripts
								    -1,                                                                                            //myTextCol
								    -1,                                                                   //myEmotion
								    -1                                                                                             //myEmote
								    );
									itemCombineSelect1 = 0;
									itemCombineSelect2 = 0;
									itemCombinePos1 = 0;
									itemCombinePos2 = 0;
									itemCombineType1 = 0;
									itemCombineType2 = 0;
							
									if(itemCombineSelect1 == 0)
									{
										itemCombineType1 = itemArray[itemSelected][itemType];
										itemCombinePos1 = itemSelected;
								
										itemCombineSelect1 = 1;
										itemCombineSelect2 = 1;
								
										var itemCombineRow = rowPos;
										var itemCombineCol = colPos;
								
										combiningItemX = rowPos * 280;
										combiningItemY = colPos * 301;
								
										show_debug_message(string("First item selected") + @"
										" + string(itemCombineType1) + @"
										" + string(combiningItemX) + @"
										" + string(combiningItemY));
									}
								}
							}
					
								else
							{
									if(global.usingItem == 1)
								{
										if(itemArray[itemSelected][itemType] == itemNeeded)
									{
										itemArray[itemSelected][itemUses] += -1;
								
										if(itemArray[itemSelected][itemUses] <= 0)
									{
										itemArray[itemSelected][itemAmount] += -1;
										show_debug_message("No uses")
									}
								
										if(itemArray[itemSelected][itemAmount] <= 0)
									{
										itemArray[itemSelected][itemType] = itemNone;
										show_debug_message("No amount")
									}
								
										global.itemCheck = 2;
										global.inventoryOpen = 0;
								
										show_debug_message(string("Used item") + @"
										" + string(global.itemCheck));
									}
							
										else
									{
										global.itemWrongType = itemArray[itemSelected][itemType];
								
										global.itemCheck = 1;
								
										show_debug_message(string("Wrong item"));
									}
								}
							}
						}
				
												else
							{
								if(global.Talking == 0)
							{
								if(itemCombineSelect2 == 1)
							{
								if(!(itemArray[itemSelected][itemType] == itemCombineType1))
							{
								if(!(itemArray[itemSelected][itemType] == itemNone))
							{
								itemCombineType2 = itemArray[itemSelected][itemType];
																	itemCombinePos2 = itemSelected;
									
																	show_debug_message(string("Second item selected") + @"
																	" + string(itemCombineType2));
									
																	instance_create_layer(0, 0, "Instances", InventoryCombining);
									
																	show_debug_message(string("Item combine 1:") + @"
																	" + string(itemCombineType1) + @"
																	" + string("Item combine 2:") + @"
																	" + string(itemCombineType2));
									
																	global.itemCombiningType1 = itemCombineType1;
																	global.itemCombiningType2 = itemCombineType2;
										
										
							}
							}
							
															else
							{
								show_debug_message(string("Same item type"));
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

// Moving in inventory
if keyboard_check_pressed(global.leftKey) {
	if(global.inventoryOpen == 1)
	{
		if(global.Talking == 0)
		{
				if(global.selectionOpen == 0)
				{
					rowPos += -1;
							itemSelected += -1;
		
					if(rowPos < 0)
					{
					rowPos = 2;
								itemSelected += 3;
					}
			}
		}
	}
}
if keyboard_check_pressed(global.rightKey) {
	if(global.inventoryOpen == 1)
	{
		if(global.Talking == 0)
	{
		if(global.selectionOpen == 0)
	{
		rowPos += 1;
				itemSelected += 1;
		
				if(rowPos > 2)
	{
		rowPos = 0;
					itemSelected += -3;
	}
	}
	}
	}
}
if keyboard_check_pressed(global.upKey) {
		if(global.inventoryOpen == 1)
	{
		if(global.Talking == 0)
	{
		if(global.selectionOpen == 0)
	{
		colPos += -1;
				itemSelected += -3;
		
				if(colPos < 0)
	{
		colPos = 2;
					itemSelected += 9;
	}
	}
	}
	}
}
if keyboard_check_pressed(global.downKey) {
		if(global.inventoryOpen == 1)
	{
		if(global.Talking == 0)
	{
		if(global.selectionOpen == 0)
	{
		colPos += 1;
				itemSelected += 3;
		
				if(colPos > 2)
	{
		colPos = 0;
					itemSelected += -9;
	}
	}
	}
	}
}

// Pause Menu
if keyboard_check_pressed(global.pauseKey) {
	if pauseMenu = "Closed" {
		create_instance_layer(x, y,"Instances", obj_PauseMenu)
		pauseMenu = "Open"
		global.Immobilize = 1;
	}
	else if pauseMenu = "Open" {
		instance_destroy(obj_PauseMenu)
		pauseMenu = "Closed"
		global.Immobilize = 0;
	}
}






if(global.playerFollowers == 1)
{
	/// @description Execute Code
	if (global.playerMoving != 0) {
		
		array_push(follow_coords, { x: x, y: y, playerDirection: playerDirection});
		if (array_length(follow_coords) > follow_max + 1)
		    array_delete(follow_coords, 0, 1);
	}
}