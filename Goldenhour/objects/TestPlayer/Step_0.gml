/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 68A17981
/// @DnDInput : 2
/// @DnDArgument : "var" "selectionX"
/// @DnDArgument : "var_1" "selectionY"
selectionX = 0;
selectionY = 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 75BCBD2D
/// @DnDInput : 2
/// @DnDArgument : "var" "playerX"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "playerY"
/// @DnDArgument : "value_1" "y"
var playerX = x;
var playerY = y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 646C5B7F
/// @DnDArgument : "var" "global.startPlayerDirection"
if(global.startPlayerDirection == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FAF7A7C
	/// @DnDParent : 646C5B7F
	/// @DnDArgument : "var" "playerDirection"
	playerDirection = 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1BD8984C
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03E28D75
	/// @DnDParent : 1BD8984C
	/// @DnDArgument : "var" "global.startPlayerDirection"
	/// @DnDArgument : "value" "1"
	if(global.startPlayerDirection == 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2624650F
		/// @DnDParent : 03E28D75
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5A2A4983
	/// @DnDParent : 1BD8984C
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35AC15B3
		/// @DnDParent : 5A2A4983
		/// @DnDArgument : "var" "global.startPlayerDirection"
		/// @DnDArgument : "value" "2"
		if(global.startPlayerDirection == 2){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0EAE50FF
			/// @DnDParent : 35AC15B3
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 2;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 55D4D2F8
		/// @DnDParent : 5A2A4983
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E18262B
			/// @DnDParent : 55D4D2F8
			/// @DnDArgument : "var" "global.startPlayerDirection"
			/// @DnDArgument : "value" "3"
			if(global.startPlayerDirection == 3){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 37C16E07
				/// @DnDParent : 3E18262B
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "var" "playerDirection"
				playerDirection = 3;}}}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 52307E64
/// @DnDArgument : "expr" "playerX != previousPlayerX"
if(playerX != previousPlayerX){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1972F7C1
	/// @DnDParent : 52307E64
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "playerXMoving"
	playerXMoving = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 224B1280
	/// @DnDParent : 52307E64
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.playerMoving"
	global.playerMoving = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 37BAC11D
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50D3A316
	/// @DnDParent : 37BAC11D
	/// @DnDArgument : "var" "playerYMoving"
	if(playerYMoving == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 64A48F9A
		/// @DnDParent : 50D3A316
		/// @DnDArgument : "var" "global.playerMoving"
		global.playerMoving = 0;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A0392EE
	/// @DnDParent : 37BAC11D
	/// @DnDArgument : "var" "playerXMoving"
	playerXMoving = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 77C657FB
	/// @DnDParent : 37BAC11D
	/// @DnDArgument : "expr" "playerY != previousPlayerY"
	if(playerY != previousPlayerY){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 72A69BAA
		/// @DnDParent : 77C657FB
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playerYMoving"
		playerYMoving = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 264AEF4B
		/// @DnDParent : 77C657FB
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.playerMoving"
		global.playerMoving = 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1A514B70
	/// @DnDParent : 37BAC11D
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D0B7CE6
		/// @DnDParent : 1A514B70
		/// @DnDArgument : "var" "playerXMoving"
		if(playerXMoving == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5139A826
			/// @DnDParent : 5D0B7CE6
			/// @DnDArgument : "var" "global.playerMoving"
			global.playerMoving = 0;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C888E26
		/// @DnDParent : 1A514B70
		/// @DnDArgument : "var" "playerYMoving"
		playerYMoving = 0;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1F2F77D3
/// @DnDArgument : "var" "global.Immobilize"
if(global.Immobilize == 0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38721CF7
	/// @DnDInput : 4
	/// @DnDParent : 1F2F77D3
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
	/// @DnDHash : 7F289B75
	/// @DnDInput : 2
	/// @DnDParent : 1F2F77D3
	/// @DnDArgument : "var" "xinput"
	/// @DnDArgument : "value" "right - left"
	/// @DnDArgument : "var_1" "yinput"
	/// @DnDArgument : "value_1" "down - up"
	var xinput = right - left;
	var yinput = down - up;

	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 6529D20D
	/// @DnDParent : 1F2F77D3
	/// @DnDArgument : "xvel" "xinput * Speed"
	/// @DnDArgument : "yvel" "yinput * Speed"
	/// @DnDArgument : "maxxmove" "Speed"
	/// @DnDArgument : "maxymove" "Speed"
	/// @DnDArgument : "object" "TestWall"
	/// @DnDSaveInfo : "object" "TestWall"
	move_and_collide(xinput * Speed, yinput * Speed, TestWall,4,0,0,Speed,Speed);

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 392D30D6
	/// @DnDParent : 1F2F77D3
	/// @DnDArgument : "key" "ord("W")"
	var l392D30D6_0;l392D30D6_0 = keyboard_check_pressed(ord("W"));if (l392D30D6_0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 236A2887
		/// @DnDParent : 392D30D6
		/// @DnDArgument : "value" "4"
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 4;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49973F9C
		/// @DnDParent : 392D30D6
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2C22B570
		/// @DnDParent : 392D30D6
		/// @DnDArgument : "var" "global.globalPlayerDirection"
		global.globalPlayerDirection = 0;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 6BBDE70D
	/// @DnDParent : 1F2F77D3
	/// @DnDArgument : "key" "ord("D")"
	var l6BBDE70D_0;l6BBDE70D_0 = keyboard_check_pressed(ord("D"));if (l6BBDE70D_0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3069EB3A
		/// @DnDParent : 6BBDE70D
		/// @DnDArgument : "value" "4"
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 4;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56B14DE1
		/// @DnDParent : 6BBDE70D
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 502C4E02
		/// @DnDParent : 6BBDE70D
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.globalPlayerDirection"
		global.globalPlayerDirection = 1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0150F001
	/// @DnDParent : 1F2F77D3
	/// @DnDArgument : "key" "ord("S")"
	var l0150F001_0;l0150F001_0 = keyboard_check_pressed(ord("S"));if (l0150F001_0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 189A7CC3
		/// @DnDParent : 0150F001
		/// @DnDArgument : "value" "4"
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 4;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7900422F
		/// @DnDParent : 0150F001
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 2;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 416FBD94
		/// @DnDParent : 0150F001
		/// @DnDArgument : "value" "2"
		/// @DnDArgument : "var" "global.globalPlayerDirection"
		global.globalPlayerDirection = 2;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 30CC0DA2
	/// @DnDParent : 1F2F77D3
	/// @DnDArgument : "key" "ord("A")"
	var l30CC0DA2_0;l30CC0DA2_0 = keyboard_check_pressed(ord("A"));if (l30CC0DA2_0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 100EDBFD
		/// @DnDParent : 30CC0DA2
		/// @DnDArgument : "value" "4"
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 4;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 313F0CE9
		/// @DnDParent : 30CC0DA2
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "playerDirection"
		playerDirection = 3;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 53263B69
		/// @DnDParent : 30CC0DA2
		/// @DnDArgument : "value" "3"
		/// @DnDArgument : "var" "global.globalPlayerDirection"
		global.globalPlayerDirection = 3;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
	/// @DnDVersion : 1
	/// @DnDHash : 07A8F135
	/// @DnDParent : 1F2F77D3
	/// @DnDArgument : "key" "ord("W") or ord("D") or ord("S") or ord("A")"
	var l07A8F135_0;l07A8F135_0 = keyboard_check_released(ord("W") or ord("D") or ord("S") or ord("A"));if (l07A8F135_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 04DFB103
		/// @DnDParent : 07A8F135
		/// @DnDArgument : "key" "ord("W")"
		var l04DFB103_0;l04DFB103_0 = keyboard_check(ord("W"));if (l04DFB103_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20D782DF
			/// @DnDParent : 04DFB103
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 0;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 22916E11
		/// @DnDParent : 07A8F135
		/// @DnDArgument : "key" "ord("D")"
		var l22916E11_0;l22916E11_0 = keyboard_check(ord("D"));if (l22916E11_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69D1ACE2
			/// @DnDParent : 22916E11
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 1;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 2C3FED43
		/// @DnDParent : 07A8F135
		/// @DnDArgument : "key" "ord("S")"
		var l2C3FED43_0;l2C3FED43_0 = keyboard_check(ord("S"));if (l2C3FED43_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7FEB80B2
			/// @DnDParent : 2C3FED43
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 2;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7DC1F66F
		/// @DnDParent : 07A8F135
		/// @DnDArgument : "key" "ord("A")"
		var l7DC1F66F_0;l7DC1F66F_0 = keyboard_check(ord("A"));if (l7DC1F66F_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C35794D
			/// @DnDParent : 7DC1F66F
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "playerDirection"
			playerDirection = 3;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CDC7C1F
	/// @DnDParent : 1F2F77D3
	/// @DnDArgument : "var" "global.playerMoving"
	if(global.playerMoving == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 498E9A7A
		/// @DnDParent : 1CDC7C1F
		/// @DnDArgument : "var" "playerDirection"
		if(playerDirection == 0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 6840807F
			/// @DnDParent : 498E9A7A
			/// @DnDArgument : "value" "CondiBackwardIdle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = CondiBackwardIdle;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EF4D857
		/// @DnDParent : 1CDC7C1F
		/// @DnDArgument : "var" "playerDirection"
		/// @DnDArgument : "value" "1"
		if(playerDirection == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3F88B1F7
			/// @DnDParent : 4EF4D857
			/// @DnDArgument : "value" "CondiRightIdle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = CondiRightIdle;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C085D3B
		/// @DnDParent : 1CDC7C1F
		/// @DnDArgument : "var" "playerDirection"
		/// @DnDArgument : "value" "2"
		if(playerDirection == 2){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 41C8C62A
			/// @DnDParent : 4C085D3B
			/// @DnDArgument : "value" "CondiForwardIdle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = CondiForwardIdle;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39686EFB
		/// @DnDParent : 1CDC7C1F
		/// @DnDArgument : "var" "playerDirection"
		/// @DnDArgument : "value" "3"
		if(playerDirection == 3){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 41E291D7
			/// @DnDParent : 39686EFB
			/// @DnDArgument : "value" "CondiLeftIdle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = CondiLeftIdle;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 09522F8E
	/// @DnDParent : 1F2F77D3
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C07B844
		/// @DnDParent : 09522F8E
		/// @DnDArgument : "var" "global.playerMoving"
		/// @DnDArgument : "value" "1"
		if(global.playerMoving == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 22B958AA
			/// @DnDParent : 5C07B844
			/// @DnDArgument : "var" "playerDirection"
			if(playerDirection == 0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 5C8E1196
				/// @DnDParent : 22B958AA
				/// @DnDArgument : "value" "CondiBackwardWalking"
				/// @DnDArgument : "instvar" "10"
				sprite_index = CondiBackwardWalking;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A5C2C2D
			/// @DnDParent : 5C07B844
			/// @DnDArgument : "var" "playerDirection"
			/// @DnDArgument : "value" "1"
			if(playerDirection == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 1D5F635D
				/// @DnDParent : 3A5C2C2D
				/// @DnDArgument : "value" "CondiRightWalking"
				/// @DnDArgument : "instvar" "10"
				sprite_index = CondiRightWalking;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6E5E8812
			/// @DnDParent : 5C07B844
			/// @DnDArgument : "var" "playerDirection"
			/// @DnDArgument : "value" "2"
			if(playerDirection == 2){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 4BAEC991
				/// @DnDParent : 6E5E8812
				/// @DnDArgument : "value" "CondiForwardWalking"
				/// @DnDArgument : "instvar" "10"
				sprite_index = CondiForwardWalking;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7781A931
			/// @DnDParent : 5C07B844
			/// @DnDArgument : "var" "playerDirection"
			/// @DnDArgument : "value" "3"
			if(playerDirection == 3){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 178E0947
				/// @DnDParent : 7781A931
				/// @DnDArgument : "value" "CondiLeftWalking"
				/// @DnDArgument : "instvar" "10"
				sprite_index = CondiLeftWalking;}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B703DCD
/// @DnDArgument : "var" "global.Immobilize"
/// @DnDArgument : "value" "1"
if(global.Immobilize == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 329C8E09
	/// @DnDParent : 7B703DCD
	/// @DnDArgument : "var" "playerDirection"
	if(playerDirection == 0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 683FE2FE
		/// @DnDParent : 329C8E09
		/// @DnDArgument : "value" "CondiBackwardIdle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = CondiBackwardIdle;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18484932
	/// @DnDParent : 7B703DCD
	/// @DnDArgument : "var" "playerDirection"
	/// @DnDArgument : "value" "1"
	if(playerDirection == 1){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 7AEF5D5E
		/// @DnDParent : 18484932
		/// @DnDArgument : "value" "CondiRightIdle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = CondiRightIdle;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6275194D
	/// @DnDParent : 7B703DCD
	/// @DnDArgument : "var" "playerDirection"
	/// @DnDArgument : "value" "2"
	if(playerDirection == 2){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 78691B9D
		/// @DnDParent : 6275194D
		/// @DnDArgument : "value" "CondiForwardIdle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = CondiForwardIdle;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4074D961
	/// @DnDParent : 7B703DCD
	/// @DnDArgument : "var" "playerDirection"
	/// @DnDArgument : "value" "3"
	if(playerDirection == 3){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 2086CF29
		/// @DnDParent : 4074D961
		/// @DnDArgument : "value" "CondiLeftIdle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = CondiLeftIdle;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 348D119D
/// @DnDArgument : "var" "global.recentlyInteracted"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.recentlyInteracted > 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63B18248
	/// @DnDParent : 348D119D
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.recentlyInteracted"
	global.recentlyInteracted += -1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 05D7FB98
	/// @DnDParent : 348D119D
	/// @DnDArgument : "msg" "global.recentlyInteracted"
	show_debug_message(string(global.recentlyInteracted));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27A1C709
	/// @DnDParent : 348D119D
	/// @DnDArgument : "var" "global.recentlyInteracted"
	/// @DnDArgument : "value" "2"
	if(global.recentlyInteracted == 2){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BD7DD1D
		/// @DnDParent : 27A1C709
		/// @DnDArgument : "expr" "-2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += -2;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 743B9491
		/// @DnDParent : 27A1C709
		/// @DnDArgument : "msg" "global.recentlyInteracted"
		show_debug_message(string(global.recentlyInteracted));}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58DA4FAA
/// @DnDArgument : "var" "global.keepPlayerDirection"
/// @DnDArgument : "value" "1"
if(global.keepPlayerDirection == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 227D8D22
	/// @DnDParent : 58DA4FAA
	/// @DnDArgument : "var" "playerDirection"
	if(playerDirection == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 62FCCF08
		/// @DnDParent : 227D8D22
		/// @DnDArgument : "var" "global.startPlayerDirection"
		global.startPlayerDirection = 0;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0C39C690
	/// @DnDParent : 58DA4FAA
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0EF9D8C5
		/// @DnDParent : 0C39C690
		/// @DnDArgument : "var" "playerDirection"
		/// @DnDArgument : "value" "1"
		if(playerDirection == 1){	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 72C06D77
			/// @DnDParent : 0EF9D8C5
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "global.startPlayerDirection"
			global.startPlayerDirection = 1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7D1B30EE
		/// @DnDParent : 0C39C690
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70D288C1
			/// @DnDParent : 7D1B30EE
			/// @DnDArgument : "var" "playerDirection"
			/// @DnDArgument : "value" "2"
			if(playerDirection == 2){	/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 5B27606E
				/// @DnDParent : 70D288C1
				/// @DnDArgument : "value" "2"
				/// @DnDArgument : "var" "global.startPlayerDirection"
				global.startPlayerDirection = 2;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6F3AE629
			/// @DnDParent : 7D1B30EE
			else{	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5BE87FCF
				/// @DnDParent : 6F3AE629
				/// @DnDArgument : "var" "playerDirection"
				/// @DnDArgument : "value" "3"
				if(playerDirection == 3){	/// @DnDAction : YoYo Games.Common.Set_Global
					/// @DnDVersion : 1
					/// @DnDHash : 421A9A2F
					/// @DnDParent : 5BE87FCF
					/// @DnDArgument : "value" "3"
					/// @DnDArgument : "var" "global.startPlayerDirection"
					global.startPlayerDirection = 3;}}}}}

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 0759E067
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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C438656
/// @DnDArgument : "var" "selectionY"
/// @DnDArgument : "value" "101"
if(selectionY == 101){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E6A4D3E
	/// @DnDParent : 2C438656
	/// @DnDArgument : "var" "selectionX"
	/// @DnDArgument : "value" "101"
	if(selectionX == 101){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63CFA96A
		/// @DnDParent : 1E6A4D3E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "itemSelected"
		itemSelected = 1;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F84D27A
	/// @DnDParent : 2C438656
	/// @DnDArgument : "var" "selectionX"
	/// @DnDArgument : "value" "381"
	if(selectionX == 381){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45E84A6E
		/// @DnDParent : 2F84D27A
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "itemSelected"
		itemSelected = 2;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6134E602
	/// @DnDParent : 2C438656
	/// @DnDArgument : "var" "selectionX"
	/// @DnDArgument : "value" "661"
	if(selectionX == 661){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2610D2EF
		/// @DnDParent : 6134E602
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "itemSelected"
		itemSelected = 3;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57287368
/// @DnDArgument : "var" "selectionY"
/// @DnDArgument : "value" "402"
if(selectionY == 402){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 132EA37A
	/// @DnDParent : 57287368
	/// @DnDArgument : "var" "selectionX"
	/// @DnDArgument : "value" "101"
	if(selectionX == 101){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 682F69B0
		/// @DnDParent : 132EA37A
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "itemSelected"
		itemSelected = 4;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F0660C1
	/// @DnDParent : 57287368
	/// @DnDArgument : "var" "selectionX"
	/// @DnDArgument : "value" "381"
	if(selectionX == 381){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B4DBD85
		/// @DnDParent : 5F0660C1
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "itemSelected"
		itemSelected = 5;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E37507A
	/// @DnDParent : 57287368
	/// @DnDArgument : "var" "selectionX"
	/// @DnDArgument : "value" "661"
	if(selectionX == 661){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 489F9A12
		/// @DnDParent : 1E37507A
		/// @DnDArgument : "expr" "6"
		/// @DnDArgument : "var" "itemSelected"
		itemSelected = 6;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28B52CB5
/// @DnDArgument : "var" "selectionY"
/// @DnDArgument : "value" "703"
if(selectionY == 703){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61A612DB
	/// @DnDParent : 28B52CB5
	/// @DnDArgument : "var" "selectionX"
	/// @DnDArgument : "value" "101"
	if(selectionX == 101){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6861242A
		/// @DnDParent : 61A612DB
		/// @DnDArgument : "expr" "7"
		/// @DnDArgument : "var" "itemSelected"
		itemSelected = 7;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08A62540
	/// @DnDParent : 28B52CB5
	/// @DnDArgument : "var" "selectionX"
	/// @DnDArgument : "value" "381"
	if(selectionX == 381){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1E1A93FA
		/// @DnDParent : 08A62540
		/// @DnDArgument : "expr" "8"
		/// @DnDArgument : "var" "itemSelected"
		itemSelected = 8;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60E1B9DF
	/// @DnDParent : 28B52CB5
	/// @DnDArgument : "var" "selectionX"
	/// @DnDArgument : "value" "661"
	if(selectionX == 661){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40B5C8FE
		/// @DnDParent : 60E1B9DF
		/// @DnDArgument : "expr" "9"
		/// @DnDArgument : "var" "itemSelected"
		itemSelected = 9;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3EBAA721
/// @DnDArgument : "var" "global.selectionOpen"
if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D3615C9
	/// @DnDParent : 3EBAA721
	/// @DnDArgument : "var" "global.infoOpen"
	if(global.infoOpen == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 67E4B696
		/// @DnDParent : 2D3615C9
		/// @DnDArgument : "key" "ord("W")"
		var l67E4B696_0;l67E4B696_0 = keyboard_check_pressed(ord("W"));if (l67E4B696_0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A50B19F
			/// @DnDParent : 67E4B696
			/// @DnDArgument : "var" "selectionY"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "101"
			if(selectionY > 101){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 14238602
				/// @DnDInput : 2
				/// @DnDApplyTo : {InventorySelectObject}
				/// @DnDParent : 2A50B19F
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "value_1" "-301"
				/// @DnDArgument : "value_relative_1" "1"
				/// @DnDArgument : "instvar_1" "1"
				with(InventorySelectObject) {
				x += 0;
				y += -301;
				}}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 52A77A6F
		/// @DnDParent : 2D3615C9
		/// @DnDArgument : "key" "ord("S")"
		var l52A77A6F_0;l52A77A6F_0 = keyboard_check_pressed(ord("S"));if (l52A77A6F_0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 56A2E0A0
			/// @DnDParent : 52A77A6F
			/// @DnDArgument : "var" "selectionY"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "703"
			if(selectionY < 703){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 2F956889
				/// @DnDInput : 2
				/// @DnDApplyTo : {InventorySelectObject}
				/// @DnDParent : 56A2E0A0
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "value_1" "301"
				/// @DnDArgument : "value_relative_1" "1"
				/// @DnDArgument : "instvar_1" "1"
				with(InventorySelectObject) {
				x += 0;
				y += 301;
				}}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 645122D0
		/// @DnDParent : 2D3615C9
		/// @DnDArgument : "key" "ord("D")"
		var l645122D0_0;l645122D0_0 = keyboard_check_pressed(ord("D"));if (l645122D0_0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 754B8CDB
			/// @DnDParent : 645122D0
			/// @DnDArgument : "var" "selectionX"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "661"
			if(selectionX < 661){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 55C268D5
				/// @DnDInput : 2
				/// @DnDApplyTo : {InventorySelectObject}
				/// @DnDParent : 754B8CDB
				/// @DnDArgument : "value" "280"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "value_relative_1" "1"
				/// @DnDArgument : "instvar_1" "1"
				with(InventorySelectObject) {
				x += 280;
				y += 0;
				}}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 37630687
		/// @DnDParent : 2D3615C9
		/// @DnDArgument : "key" "ord("A")"
		var l37630687_0;l37630687_0 = keyboard_check_pressed(ord("A"));if (l37630687_0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F94F392
			/// @DnDParent : 37630687
			/// @DnDArgument : "var" "selectionX"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "101"
			if(selectionX > 101){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 533B7BFE
				/// @DnDInput : 2
				/// @DnDApplyTo : {InventorySelectObject}
				/// @DnDParent : 2F94F392
				/// @DnDArgument : "value" "-280"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "value_relative_1" "1"
				/// @DnDArgument : "instvar_1" "1"
				with(InventorySelectObject) {
				x += -280;
				y += 0;
				}}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BD2660B
/// @DnDArgument : "var" "inventoryOpen"
/// @DnDArgument : "value" "1"
if(inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 591BDC8F
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "global.combining"
	/// @DnDArgument : "value" "1"
	if(global.combining == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05EC433B
		/// @DnDParent : 591BDC8F
		/// @DnDArgument : "var" "combinedText"
		if(combinedText == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 20353187
			/// @DnDParent : 05EC433B
			/// @DnDArgument : "objectid" "InventoryCombiningText"
			/// @DnDArgument : "layer" ""Instances_2""
			/// @DnDSaveInfo : "objectid" "InventoryCombiningText"
			instance_create_layer(0, 0, "Instances_2", InventoryCombiningText);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5FD1A53A
			/// @DnDParent : 05EC433B
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "combinedText"
			combinedText = 1;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5C07A8EF
	/// @DnDParent : 7BD2660B
	else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 059CC026
		/// @DnDApplyTo : {InventoryCombiningText}
		/// @DnDParent : 5C07A8EF
		with(InventoryCombiningText) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FFEA4DD
		/// @DnDParent : 5C07A8EF
		/// @DnDArgument : "var" "combinedText"
		combinedText = 0;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AF9E1A4
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "itemSelected"
	/// @DnDArgument : "value" "1"
	if(itemSelected == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40BFAAD2
		/// @DnDParent : 1AF9E1A4
		/// @DnDArgument : "var" "global.testObject"
		/// @DnDArgument : "value" "1"
		if(global.testObject == 1){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 0410C234
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 40BFAAD2
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 71400B5F
				/// @DnDParent : 0410C234
				/// @DnDArgument : "expr" ""Ball""
				/// @DnDArgument : "var" "itemName"
				itemName = "Ball";
			}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 109757DB
		/// @DnDParent : 1AF9E1A4
		else{	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 1D275F54
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 109757DB
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2B54F60C
				/// @DnDParent : 1D275F54
				/// @DnDArgument : "expr" ""???""
				/// @DnDArgument : "var" "itemName"
				itemName = "???";
			}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A2EB2D1
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "itemSelected"
	/// @DnDArgument : "value" "2"
	if(itemSelected == 2){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1EA6DFD4
		/// @DnDParent : 6A2EB2D1
		/// @DnDArgument : "var" "global.plantObject"
		/// @DnDArgument : "value" "1"
		if(global.plantObject == 1){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 5E96D752
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 1EA6DFD4
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 407A21F7
				/// @DnDParent : 5E96D752
				/// @DnDArgument : "expr" ""Potted Plant""
				/// @DnDArgument : "var" "itemName"
				itemName = "Potted Plant";
			}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1AB66F73
		/// @DnDParent : 6A2EB2D1
		else{	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 0B7A4EB1
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 1AB66F73
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 298B2AA1
				/// @DnDParent : 0B7A4EB1
				/// @DnDArgument : "expr" ""???""
				/// @DnDArgument : "var" "itemName"
				itemName = "???";
			}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D6D509E
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "itemSelected"
	/// @DnDArgument : "value" "3"
	if(itemSelected == 3){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0046F6A8
		/// @DnDParent : 5D6D509E
		/// @DnDArgument : "var" "global.plantObject"
		/// @DnDArgument : "value" "2"
		if(global.plantObject == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 28DEDC06
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 0046F6A8
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 63B7832D
				/// @DnDParent : 28DEDC06
				/// @DnDArgument : "expr" ""Potted Plant""
				/// @DnDArgument : "var" "itemName"
				itemName = "Potted Plant";
			}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6DFD3D51
		/// @DnDParent : 5D6D509E
		else{	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 0EC08EEE
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 6DFD3D51
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 23BAC54B
				/// @DnDParent : 0EC08EEE
				/// @DnDArgument : "expr" ""???""
				/// @DnDArgument : "var" "itemName"
				itemName = "???";
			}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53BBA3A5
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "itemSelected"
	/// @DnDArgument : "value" "4"
	if(itemSelected == 4){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21BA3BFC
		/// @DnDParent : 53BBA3A5
		/// @DnDArgument : "var" "global.plantObject"
		/// @DnDArgument : "value" "2"
		if(global.plantObject == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 60C8570D
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 21BA3BFC
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0F2A8F8B
				/// @DnDParent : 60C8570D
				/// @DnDArgument : "expr" ""Potted Plant""
				/// @DnDArgument : "var" "itemName"
				itemName = "Potted Plant";
			}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 74945521
		/// @DnDParent : 53BBA3A5
		else{	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 5BE58DDC
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 74945521
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5CE62A64
				/// @DnDParent : 5BE58DDC
				/// @DnDArgument : "expr" ""???""
				/// @DnDArgument : "var" "itemName"
				itemName = "???";
			}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6283BF5F
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "itemSelected"
	/// @DnDArgument : "value" "5"
	if(itemSelected == 5){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 398D87D9
		/// @DnDParent : 6283BF5F
		/// @DnDArgument : "var" "global.plantObject"
		/// @DnDArgument : "value" "2"
		if(global.plantObject == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 128375B3
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 398D87D9
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 50B268F0
				/// @DnDParent : 128375B3
				/// @DnDArgument : "expr" ""Potted Plant""
				/// @DnDArgument : "var" "itemName"
				itemName = "Potted Plant";
			}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3CDF4454
		/// @DnDParent : 6283BF5F
		else{	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 55530C82
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 3CDF4454
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 00C08B32
				/// @DnDParent : 55530C82
				/// @DnDArgument : "expr" ""???""
				/// @DnDArgument : "var" "itemName"
				itemName = "???";
			}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0495BDB6
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "itemSelected"
	/// @DnDArgument : "value" "6"
	if(itemSelected == 6){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 72583826
		/// @DnDParent : 0495BDB6
		/// @DnDArgument : "var" "global.plantObject"
		/// @DnDArgument : "value" "2"
		if(global.plantObject == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 1F22E2DC
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 72583826
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 618D70DB
				/// @DnDParent : 1F22E2DC
				/// @DnDArgument : "expr" ""Potted Plant""
				/// @DnDArgument : "var" "itemName"
				itemName = "Potted Plant";
			}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 19E0F63F
		/// @DnDParent : 0495BDB6
		else{	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 77A45908
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 19E0F63F
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 529D8180
				/// @DnDParent : 77A45908
				/// @DnDArgument : "expr" ""???""
				/// @DnDArgument : "var" "itemName"
				itemName = "???";
			}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B863FEE
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "itemSelected"
	/// @DnDArgument : "value" "7"
	if(itemSelected == 7){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C9956FD
		/// @DnDParent : 2B863FEE
		/// @DnDArgument : "var" "global.plantObject"
		/// @DnDArgument : "value" "2"
		if(global.plantObject == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 48CCDA40
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 7C9956FD
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 37C4577F
				/// @DnDParent : 48CCDA40
				/// @DnDArgument : "expr" ""Potted Plant""
				/// @DnDArgument : "var" "itemName"
				itemName = "Potted Plant";
			}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 79AED7C5
		/// @DnDParent : 2B863FEE
		else{	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 6E923878
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 79AED7C5
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7C65091A
				/// @DnDParent : 6E923878
				/// @DnDArgument : "expr" ""???""
				/// @DnDArgument : "var" "itemName"
				itemName = "???";
			}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58858219
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "itemSelected"
	/// @DnDArgument : "value" "8"
	if(itemSelected == 8){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 530F22F2
		/// @DnDParent : 58858219
		/// @DnDArgument : "var" "global.plantObject"
		/// @DnDArgument : "value" "2"
		if(global.plantObject == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 682870B3
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 530F22F2
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1963C928
				/// @DnDParent : 682870B3
				/// @DnDArgument : "expr" ""Potted Plant""
				/// @DnDArgument : "var" "itemName"
				itemName = "Potted Plant";
			}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 39304B40
		/// @DnDParent : 58858219
		else{	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 52B45A16
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 39304B40
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 28BA223F
				/// @DnDParent : 52B45A16
				/// @DnDArgument : "expr" ""???""
				/// @DnDArgument : "var" "itemName"
				itemName = "???";
			}}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 134D3401
	/// @DnDParent : 7BD2660B
	/// @DnDArgument : "var" "itemSelected"
	/// @DnDArgument : "value" "9"
	if(itemSelected == 9){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 718A24DC
		/// @DnDParent : 134D3401
		/// @DnDArgument : "var" "global.plantObject"
		/// @DnDArgument : "value" "2"
		if(global.plantObject == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 0E39B6B1
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 718A24DC
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 40D12AAA
				/// @DnDParent : 0E39B6B1
				/// @DnDArgument : "expr" ""Potted Plant""
				/// @DnDArgument : "var" "itemName"
				itemName = "Potted Plant";
			}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4BF34AF9
		/// @DnDParent : 134D3401
		else{	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 5BD3E1DE
			/// @DnDApplyTo : {InventoryItemNames}
			/// @DnDParent : 4BF34AF9
			with(InventoryItemNames) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 135D2FA1
				/// @DnDParent : 5BD3E1DE
				/// @DnDArgument : "expr" ""???""
				/// @DnDArgument : "var" "itemName"
				itemName = "???";
			}}}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0DF06A91
/// @DnDInput : 2
/// @DnDArgument : "expr" "xprevious"
/// @DnDArgument : "expr_1" "yprevious"
/// @DnDArgument : "var" "previousPlayerX"
/// @DnDArgument : "var_1" "previousPlayerY"
previousPlayerX = xprevious;
previousPlayerY = yprevious;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7350FBFF
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.playerMoving != 0) {$(13_10)	$(13_10)	array_push(follow_coords, { x: x, y: y, playerDirection: playerDirection});$(13_10)	if (array_length(follow_coords) > follow_max + 1)$(13_10)	    array_delete(follow_coords, 0, 1);$(13_10)}$(13_10)"
/// @description Execute Code
if (global.playerMoving != 0) {
	
	array_push(follow_coords, { x: x, y: y, playerDirection: playerDirection});
	if (array_length(follow_coords) > follow_max + 1)
	    array_delete(follow_coords, 0, 1);
}