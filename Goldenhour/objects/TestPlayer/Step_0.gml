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
	var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	var down = keyboard_check(vk_down) or keyboard_check(ord("S"));

	var xinput = right - left;
	var yinput = down - up;

	move_and_collide(xinput * Speed, yinput * Speed, [TestWall],4,0,0,Speed,Speed);

	var l601DB0A5_0;
l601DB0A5_0 = keyboard_check_pressed(ord("W"));
if (l601DB0A5_0)
{
	global.startPlayerDirection = 4;
	
		playerDirection = 0;
	
		global.globalPlayerDirection = 0;
}

	var l36039074_0;
l36039074_0 = keyboard_check_pressed(ord("D"));
if (l36039074_0)
{
	global.startPlayerDirection = 4;
	
		playerDirection = 1;
	
		global.globalPlayerDirection = 1;
}

	var l3BA31F1F_0;
l3BA31F1F_0 = keyboard_check_pressed(ord("S"));
if (l3BA31F1F_0)
{
	global.startPlayerDirection = 4;
	
		playerDirection = 2;
	
		global.globalPlayerDirection = 2;
}

	var l6FE386E6_0;
l6FE386E6_0 = keyboard_check_pressed(ord("A"));
if (l6FE386E6_0)
{
	global.startPlayerDirection = 4;
	
		playerDirection = 3;
	
		global.globalPlayerDirection = 3;
}

	var l74A54030_0;
l74A54030_0 = keyboard_check_released(ord("W") or ord("D") or ord("S") or ord("A"));
if (l74A54030_0)
{
	var l7BDD122B_0;
l7BDD122B_0 = keyboard_check(ord("W"));
if (l7BDD122B_0)
{
	playerDirection = 0;
		
			global.globalPlayerDirection = 0;
}
	
		var l28D13ED9_0;
l28D13ED9_0 = keyboard_check(ord("D"));
if (l28D13ED9_0)
{
	playerDirection = 1;
		
			global.globalPlayerDirection = 1;
}
	
		var l31249281_0;
l31249281_0 = keyboard_check(ord("S"));
if (l31249281_0)
{
	playerDirection = 2;
		
			global.globalPlayerDirection = 2;
}
	
		var l62652CE5_0;
l62652CE5_0 = keyboard_check(ord("A"));
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

if (global.inventoryOpen = 0) {
	audio_exists(inventoryLoop || inventoryBeginning) {
		audio_pause_sound(inventoryLoop && inventoryBeginning);
	}
}
else {
	audio_resume_sound(inventoryLoop && inventoryBeginning);
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