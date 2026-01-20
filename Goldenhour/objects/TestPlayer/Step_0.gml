/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6337189D
/// @DnDArgument : "code" "//if(instance_exists(obj_textbox)) exit;$(13_10)$(13_10)//input_left		= keyboard_check(vk_left);$(13_10)//input_right		= keyboard_check(vk_right);$(13_10)//input_up		= keyboard_check(vk_up);$(13_10)//input_down		= keyboard_check(vk_down);$(13_10)//input_run		= keyboard_check(vk_shift);$(13_10)//input_walk		= keyboard_check(vk_control);$(13_10)$(13_10)//---------RESET MOVEMENT VARIABLES$(13_10)//moveX = 0; $(13_10)//moveY = 0;$(13_10)$(13_10)//---------GET INTENDED MOVEMENT$(13_10)//var right = (input_right - input_left);$(13_10)//var left = (input_down - input_up);$(13_10)//if(right != 0 or left != 0){$(13_10)//	var dir = point_direction(x,y, x+right, y+left);$(13_10)//	moveX = lengthdir_x(spd, dir);$(13_10)//	moveY = lengthdir_y(spd, dir);$(13_10)//}$(13_10)$(13_10)//---------APPLY MOVEMENT$(13_10)//x += moveX;$(13_10)//y += moveY;"
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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5F766D62
/// @DnDInput : 2
/// @DnDArgument : "var" "selectionX"
/// @DnDArgument : "var_1" "selectionY"
selectionX = 0;
selectionY = 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 37A2F15B
/// @DnDInput : 2
/// @DnDArgument : "var" "playerX"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "playerY"
/// @DnDArgument : "value_1" "y"
var playerX = x;
var playerY = y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C6504EC
/// @DnDArgument : "var" "global.startPlayerDirection"
if(global.startPlayerDirection == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E8AAAE2
	/// @DnDParent : 3C6504EC
	/// @DnDArgument : "var" "playerDirection"
	playerDirection = 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0A8F5070
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7EC6E014
	/// @DnDParent : 0A8F5070
	/// @DnDArgument : "var" "global.startPlayerDirection"
	/// @DnDArgument : "value" "1"
	if(global.startPlayerDirection == 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FCF809E
		/// @DnDParent : 7EC6E014
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 79F0500D
	/// @DnDParent : 0A8F5070
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78AF1592
		/// @DnDParent : 79F0500D
		/// @DnDArgument : "var" "global.startPlayerDirection"
		/// @DnDArgument : "value" "2"
		if(global.startPlayerDirection == 2){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 65262569
			/// @DnDParent : 78AF1592
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 2;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 061F7CE2
		/// @DnDParent : 79F0500D
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CED3F98
			/// @DnDParent : 061F7CE2
			/// @DnDArgument : "var" "global.startPlayerDirection"
			/// @DnDArgument : "value" "3"
			if(global.startPlayerDirection == 3){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 25BD0A49
				/// @DnDParent : 3CED3F98
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "var" "playerDirection"
				playerDirection = 3;}}}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 54A5D08B
/// @DnDArgument : "expr" "playerX != previousPlayerX"
if(playerX != previousPlayerX){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14E06A7E
	/// @DnDParent : 54A5D08B
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "playerXMoving"
	playerXMoving = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0E7FCE7A
	/// @DnDParent : 54A5D08B
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.playerMoving"
	global.playerMoving = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 745FF493
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 077F7740
	/// @DnDParent : 745FF493
	/// @DnDArgument : "var" "playerYMoving"
	if(playerYMoving == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 52E015FF
		/// @DnDParent : 077F7740
		/// @DnDArgument : "var" "global.playerMoving"
		global.playerMoving = 0;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15024B3F
	/// @DnDParent : 745FF493
	/// @DnDArgument : "var" "playerXMoving"
	playerXMoving = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2C847911
	/// @DnDParent : 745FF493
	/// @DnDArgument : "expr" "playerY != previousPlayerY"
	if(playerY != previousPlayerY){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3253BCBC
		/// @DnDParent : 2C847911
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playerYMoving"
		playerYMoving = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 36A814A3
		/// @DnDParent : 2C847911
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.playerMoving"
		global.playerMoving = 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 265653C5
	/// @DnDParent : 745FF493
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4124E032
		/// @DnDParent : 265653C5
		/// @DnDArgument : "var" "playerXMoving"
		if(playerXMoving == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5A14D8F7
			/// @DnDParent : 4124E032
			/// @DnDArgument : "var" "global.playerMoving"
			global.playerMoving = 0;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DC64FC5
		/// @DnDParent : 265653C5
		/// @DnDArgument : "var" "playerYMoving"
		playerYMoving = 0;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 14CF4904
/// @DnDArgument : "var" "global.Immobilize"
if(global.Immobilize == 0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6097A21D
	/// @DnDInput : 4
	/// @DnDParent : 14CF4904
	/// @DnDArgument : "var" "right"
	/// @DnDArgument : "value" "keyboard_check(vk_right) or keyboard_check(ord("D"))"
	/// @DnDArgument : "var_1" "left"
	/// @DnDArgument : "value_1" "keyboard_check(vk_left) or keyboard_check(ord("A"))"
	/// @DnDArgument : "var_2" "up"
	/// @DnDArgument : "value_2" "keyboard_check(vk_up) or keyboard_check(ord("W"))"
	/// @DnDArgument : "var_3" "down"
	/// @DnDArgument : "value_3" "keyboard_check(vk_down) or keyboard_check(ord("S"))"
	var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	var down = keyboard_check(vk_down) or keyboard_check(ord("S"));

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 293B2D39
	/// @DnDInput : 2
	/// @DnDParent : 14CF4904
	/// @DnDArgument : "var" "xinput"
	/// @DnDArgument : "value" "right - left"
	/// @DnDArgument : "var_1" "yinput"
	/// @DnDArgument : "value_1" "down - up"
	var xinput = right - left;
	var yinput = down - up;

	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 75037FE6
	/// @DnDParent : 14CF4904
	/// @DnDArgument : "xvel" "xinput * Speed"
	/// @DnDArgument : "yvel" "yinput * Speed"
	/// @DnDArgument : "maxxmove" "Speed"
	/// @DnDArgument : "maxymove" "Speed"
	/// @DnDArgument : "object" "TestWall"
	/// @DnDSaveInfo : "object" "TestWall"
	move_and_collide(xinput * Speed, yinput * Speed, [TestWall],4,0,0,Speed,Speed);

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 601DB0A5
	/// @DnDParent : 14CF4904
	/// @DnDArgument : "key" "ord("W")"
	var l601DB0A5_0;l601DB0A5_0 = keyboard_check_pressed(ord("W"));if (l601DB0A5_0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0E0EE226
		/// @DnDParent : 601DB0A5
		/// @DnDArgument : "value" "4"
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 4;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E1CFB76
		/// @DnDParent : 601DB0A5
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 331F390F
		/// @DnDParent : 601DB0A5
		/// @DnDArgument : "var" "global.globalPlayerDirection"
		global.globalPlayerDirection = 0;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 36039074
	/// @DnDParent : 14CF4904
	/// @DnDArgument : "key" "ord("D")"
	var l36039074_0;l36039074_0 = keyboard_check_pressed(ord("D"));if (l36039074_0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5697F850
		/// @DnDParent : 36039074
		/// @DnDArgument : "value" "4"
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 4;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73B1B61F
		/// @DnDParent : 36039074
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 4F3F6A78
		/// @DnDParent : 36039074
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.globalPlayerDirection"
		global.globalPlayerDirection = 1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 3BA31F1F
	/// @DnDParent : 14CF4904
	/// @DnDArgument : "key" "ord("S")"
	var l3BA31F1F_0;l3BA31F1F_0 = keyboard_check_pressed(ord("S"));if (l3BA31F1F_0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 476DBEFC
		/// @DnDParent : 3BA31F1F
		/// @DnDArgument : "value" "4"
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 4;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7F875CE7
		/// @DnDParent : 3BA31F1F
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 2;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 6202FA52
		/// @DnDParent : 3BA31F1F
		/// @DnDArgument : "value" "2"
		/// @DnDArgument : "var" "global.globalPlayerDirection"
		global.globalPlayerDirection = 2;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 6FE386E6
	/// @DnDParent : 14CF4904
	/// @DnDArgument : "key" "ord("A")"
	var l6FE386E6_0;l6FE386E6_0 = keyboard_check_pressed(ord("A"));if (l6FE386E6_0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 66B16283
		/// @DnDParent : 6FE386E6
		/// @DnDArgument : "value" "4"
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 4;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CFBC6FA
		/// @DnDParent : 6FE386E6
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 3;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 019BB446
		/// @DnDParent : 6FE386E6
		/// @DnDArgument : "value" "3"
		/// @DnDArgument : "var" "global.globalPlayerDirection"
		global.globalPlayerDirection = 3;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
	/// @DnDVersion : 1
	/// @DnDHash : 74A54030
	/// @DnDParent : 14CF4904
	/// @DnDArgument : "key" "ord("W") or ord("D") or ord("S") or ord("A")"
	var l74A54030_0;l74A54030_0 = keyboard_check_released(ord("W") or ord("D") or ord("S") or ord("A"));if (l74A54030_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7BDD122B
		/// @DnDParent : 74A54030
		/// @DnDArgument : "key" "ord("W")"
		var l7BDD122B_0;l7BDD122B_0 = keyboard_check(ord("W"));if (l7BDD122B_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24F29AA2
			/// @DnDParent : 7BDD122B
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 0;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 48258FD8
			/// @DnDParent : 7BDD122B
			/// @DnDArgument : "var" "global.globalPlayerDirection"
			global.globalPlayerDirection = 0;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 28D13ED9
		/// @DnDParent : 74A54030
		/// @DnDArgument : "key" "ord("D")"
		var l28D13ED9_0;l28D13ED9_0 = keyboard_check(ord("D"));if (l28D13ED9_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0662EC52
			/// @DnDParent : 28D13ED9
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 1;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 668ED469
			/// @DnDParent : 28D13ED9
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "global.globalPlayerDirection"
			global.globalPlayerDirection = 1;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 31249281
		/// @DnDParent : 74A54030
		/// @DnDArgument : "key" "ord("S")"
		var l31249281_0;l31249281_0 = keyboard_check(ord("S"));if (l31249281_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07F9875C
			/// @DnDParent : 31249281
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 2;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 07A9DD22
			/// @DnDParent : 31249281
			/// @DnDArgument : "value" "2"
			/// @DnDArgument : "var" "global.globalPlayerDirection"
			global.globalPlayerDirection = 2;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 62652CE5
		/// @DnDParent : 74A54030
		/// @DnDArgument : "key" "ord("A")"
		var l62652CE5_0;l62652CE5_0 = keyboard_check(ord("A"));if (l62652CE5_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4B108179
			/// @DnDParent : 62652CE5
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 3;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 7B1AEEA5
			/// @DnDParent : 62652CE5
			/// @DnDArgument : "value" "3"
			/// @DnDArgument : "var" "global.globalPlayerDirection"
			global.globalPlayerDirection = 3;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34465FF9
	/// @DnDParent : 14CF4904
	/// @DnDArgument : "var" "global.playerAnimating"
	if(global.playerAnimating == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C8A607B
		/// @DnDParent : 34465FF9
		/// @DnDArgument : "var" "global.playerMoving"
		if(global.playerMoving == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7445CDE8
			/// @DnDParent : 2C8A607B
			/// @DnDArgument : "var" "playerDirection"
			if(playerDirection == 0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 42D525B2
				/// @DnDParent : 7445CDE8
				/// @DnDArgument : "value" "CondiBackwardIdle"
				/// @DnDArgument : "instvar" "10"
				sprite_index = CondiBackwardIdle;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 639B226F
			/// @DnDParent : 2C8A607B
			/// @DnDArgument : "var" "playerDirection"
			/// @DnDArgument : "value" "1"
			if(playerDirection == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 4F6D5D93
				/// @DnDParent : 639B226F
				/// @DnDArgument : "value" "CondiRightIdle"
				/// @DnDArgument : "instvar" "10"
				sprite_index = CondiRightIdle;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0822878B
			/// @DnDParent : 2C8A607B
			/// @DnDArgument : "var" "playerDirection"
			/// @DnDArgument : "value" "2"
			if(playerDirection == 2){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 07DCC23A
				/// @DnDParent : 0822878B
				/// @DnDArgument : "value" "CondiForwardIdle"
				/// @DnDArgument : "instvar" "10"
				sprite_index = CondiForwardIdle;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4FBE4533
			/// @DnDParent : 2C8A607B
			/// @DnDArgument : "var" "playerDirection"
			/// @DnDArgument : "value" "3"
			if(playerDirection == 3){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 4C450FBF
				/// @DnDParent : 4FBE4533
				/// @DnDArgument : "value" "CondiLeftIdle"
				/// @DnDArgument : "instvar" "10"
				sprite_index = CondiLeftIdle;}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2DECDC58
		/// @DnDParent : 34465FF9
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02D22558
			/// @DnDParent : 2DECDC58
			/// @DnDArgument : "var" "global.playerMoving"
			/// @DnDArgument : "value" "1"
			if(global.playerMoving == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3692C72A
				/// @DnDParent : 02D22558
				/// @DnDArgument : "var" "playerDirection"
				if(playerDirection == 0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 1C1DB9A2
					/// @DnDParent : 3692C72A
					/// @DnDArgument : "value" "CondiBackwardWalking"
					/// @DnDArgument : "instvar" "10"
					sprite_index = CondiBackwardWalking;}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2C566AEC
				/// @DnDParent : 02D22558
				/// @DnDArgument : "var" "playerDirection"
				/// @DnDArgument : "value" "1"
				if(playerDirection == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 68263353
					/// @DnDParent : 2C566AEC
					/// @DnDArgument : "value" "CondiRightWalking"
					/// @DnDArgument : "instvar" "10"
					sprite_index = CondiRightWalking;}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 58C05632
				/// @DnDParent : 02D22558
				/// @DnDArgument : "var" "playerDirection"
				/// @DnDArgument : "value" "2"
				if(playerDirection == 2){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 3744EE6E
					/// @DnDParent : 58C05632
					/// @DnDArgument : "value" "CondiForwardWalking"
					/// @DnDArgument : "instvar" "10"
					sprite_index = CondiForwardWalking;}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0BFBAA37
				/// @DnDParent : 02D22558
				/// @DnDArgument : "var" "playerDirection"
				/// @DnDArgument : "value" "3"
				if(playerDirection == 3){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 7DAA12BB
					/// @DnDParent : 0BFBAA37
					/// @DnDArgument : "value" "CondiLeftWalking"
					/// @DnDArgument : "instvar" "10"
					sprite_index = CondiLeftWalking;}}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76ABE798
/// @DnDArgument : "var" "global.Immobilize"
/// @DnDArgument : "value" "1"
if(global.Immobilize == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12DC2506
	/// @DnDParent : 76ABE798
	/// @DnDArgument : "var" "playerDirection"
	if(playerDirection == 0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5C0ABDF8
		/// @DnDParent : 12DC2506
		/// @DnDArgument : "value" "CondiBackwardIdle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = CondiBackwardIdle;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42BB57D1
	/// @DnDParent : 76ABE798
	/// @DnDArgument : "var" "playerDirection"
	/// @DnDArgument : "value" "1"
	if(playerDirection == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 4F08E3D7
		/// @DnDParent : 42BB57D1
		/// @DnDArgument : "value" "CondiRightIdle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = CondiRightIdle;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C00453B
	/// @DnDParent : 76ABE798
	/// @DnDArgument : "var" "playerDirection"
	/// @DnDArgument : "value" "2"
	if(playerDirection == 2){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 629C204E
		/// @DnDParent : 3C00453B
		/// @DnDArgument : "value" "CondiForwardIdle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = CondiForwardIdle;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05BF08A7
	/// @DnDParent : 76ABE798
	/// @DnDArgument : "var" "playerDirection"
	/// @DnDArgument : "value" "3"
	if(playerDirection == 3){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5D2F146B
		/// @DnDParent : 05BF08A7
		/// @DnDArgument : "value" "CondiLeftIdle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = CondiLeftIdle;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22F2D1F0
/// @DnDArgument : "var" "global.recentlyInteracted"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.recentlyInteracted > 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0435D71E
	/// @DnDParent : 22F2D1F0
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.recentlyInteracted"
	global.recentlyInteracted += -1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 71749C40
	/// @DnDParent : 22F2D1F0
	/// @DnDArgument : "msg" "global.recentlyInteracted"
	show_debug_message(string(global.recentlyInteracted));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 546038EB
	/// @DnDParent : 22F2D1F0
	/// @DnDArgument : "var" "global.recentlyInteracted"
	/// @DnDArgument : "value" "2"
	if(global.recentlyInteracted == 2){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27603B46
		/// @DnDParent : 546038EB
		/// @DnDArgument : "expr" "-2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += -2;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 31DDCC53
		/// @DnDParent : 546038EB
		/// @DnDArgument : "msg" "global.recentlyInteracted"
		show_debug_message(string(global.recentlyInteracted));}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FC935C2
/// @DnDArgument : "var" "global.keepPlayerDirection"
/// @DnDArgument : "value" "1"
if(global.keepPlayerDirection == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68393E51
	/// @DnDParent : 5FC935C2
	/// @DnDArgument : "var" "playerDirection"
	if(playerDirection == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 1F28CCE8
		/// @DnDParent : 68393E51
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 0;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6B0E1F44
	/// @DnDParent : 5FC935C2
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B3BF81B
		/// @DnDParent : 6B0E1F44
		/// @DnDArgument : "var" "playerDirection"
		/// @DnDArgument : "value" "1"
		if(playerDirection == 1){	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 44E173F6
			/// @DnDParent : 7B3BF81B
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "global.startPlayerDirection"
			global.startPlayerDirection = 1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5E845E23
		/// @DnDParent : 6B0E1F44
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74D32E83
			/// @DnDParent : 5E845E23
			/// @DnDArgument : "var" "playerDirection"
			/// @DnDArgument : "value" "2"
			if(playerDirection == 2){	/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 7C9E768E
				/// @DnDParent : 74D32E83
				/// @DnDArgument : "value" "2"
				/// @DnDArgument : "var" "global.startPlayerDirection"
				global.startPlayerDirection = 2;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5368ECB5
			/// @DnDParent : 5E845E23
			else{	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3715FA82
				/// @DnDParent : 5368ECB5
				/// @DnDArgument : "var" "playerDirection"
				/// @DnDArgument : "value" "3"
				if(playerDirection == 3){	/// @DnDAction : YoYo Games.Common.Set_Global
					/// @DnDVersion : 1
					/// @DnDHash : 4263132E
					/// @DnDParent : 3715FA82
					/// @DnDArgument : "value" "3"
					/// @DnDArgument : "var" "global.startPlayerDirection"
					global.startPlayerDirection = 3;}}}}}

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 3DCECA52
/// @DnDInput : 2
/// @DnDApplyTo : {InventorySelectObject}
/// @DnDArgument : "target" "selectionX"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "target_1" "selectionY"
/// @DnDArgument : "target_temp_1" "1"
/// @DnDArgument : "instvar_1" "1"
with(InventorySelectObject) {
var selectionX = x;
var selectionY = y;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 68DAB1D3
/// @DnDInput : 2
/// @DnDArgument : "expr" "xprevious"
/// @DnDArgument : "expr_1" "yprevious"
/// @DnDArgument : "var" "previousPlayerX"
/// @DnDArgument : "var_1" "previousPlayerY"
previousPlayerX = xprevious;
previousPlayerY = yprevious;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51948088
/// @DnDArgument : "var" "global.playerFollowers"
/// @DnDArgument : "value" "1"
if(global.playerFollowers == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 277638E0
	/// @DnDParent : 51948088
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.playerMoving != 0) {$(13_10)	$(13_10)	array_push(follow_coords, { x: x, y: y, playerDirection: playerDirection});$(13_10)	if (array_length(follow_coords) > follow_max + 1)$(13_10)	    array_delete(follow_coords, 0, 1);$(13_10)}$(13_10)"
	/// @description Execute Code
	if (global.playerMoving != 0) {
		
		array_push(follow_coords, { x: x, y: y, playerDirection: playerDirection});
		if (array_length(follow_coords) > follow_max + 1)
		    array_delete(follow_coords, 0, 1);
	}}