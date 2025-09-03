/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D74D883
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73E529C7
	/// @DnDParent : 4D74D883
	/// @DnDArgument : "var" "textSelected"
	if(textSelected == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 795A79F2
		/// @DnDParent : 73E529C7
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2B0A095B
		/// @DnDApplyTo : inst_C95EC19
		/// @DnDParent : 73E529C7
		with(inst_C95EC19) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 08D159AB
		/// @DnDApplyTo : inst_2FCBDD7F
		/// @DnDParent : 73E529C7
		with(inst_2FCBDD7F) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0161D493
		/// @DnDInput : 3
		/// @DnDParent : 73E529C7
		/// @DnDArgument : "var" "_pos"
		/// @DnDArgument : "value" "0"
		/// @DnDArgument : "var_1" "_type"
		/// @DnDArgument : "value_1" "item"
		/// @DnDArgument : "var_2" "_sprite"
		/// @DnDArgument : "value_2" "TestSpriteObjectInventory"
		var _pos = 0;
		var _type = item;
		var _sprite = TestSpriteObjectInventory;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 737ACF33
		/// @DnDApplyTo : {TestInventory}
		/// @DnDParent : 73E529C7
		with(TestInventory) {
			/// @DnDAction : YoYo Games.Loops.While_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 1FFF859E
			/// @DnDParent : 737ACF33
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "9"
			while ((_pos < 9)) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7A4ECEFD
				/// @DnDParent : 1FFF859E
				/// @DnDArgument : "var" "itemArray[_pos][itemType]"
				/// @DnDArgument : "value" "_type"
				if(itemArray[_pos][itemType] == _type){	/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 3F2BDBC1
					/// @DnDParent : 7A4ECEFD
					break;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 7421A2B3
				/// @DnDParent : 1FFF859E
				else{	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3F016B2E
					/// @DnDParent : 7421A2B3
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_pos"
					_pos += 1;}
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C90E021
			/// @DnDParent : 737ACF33
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "8"
			if(_pos > 8){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5759D6A2
				/// @DnDParent : 3C90E021
				/// @DnDArgument : "var" "_pos"
				_pos = 0;
			
				/// @DnDAction : YoYo Games.Loops.While_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 38CCD989
				/// @DnDParent : 3C90E021
				/// @DnDArgument : "var" "_pos"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "9"
				while ((_pos < 9)) {
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0599A105
					/// @DnDParent : 38CCD989
					/// @DnDArgument : "var" "itemArray[_pos][itemType]"
					/// @DnDArgument : "value" "itemNone"
					if(itemArray[_pos][itemType] == itemNone){	/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 71ECC7A6
						/// @DnDParent : 0599A105
						break;}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 34428E14
					/// @DnDParent : 38CCD989
					else{	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0B699B4C
						/// @DnDParent : 34428E14
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_pos"
						_pos += 1;}
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 394C0302
			/// @DnDParent : 737ACF33
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "9"
			if(_pos < 9){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6D7B37DC
				/// @DnDInput : 3
				/// @DnDParent : 394C0302
				/// @DnDArgument : "expr" "_type"
				/// @DnDArgument : "expr_1" "_sprite"
				/// @DnDArgument : "expr_2" "1"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "var" "itemArray[_pos][itemType]"
				/// @DnDArgument : "var_1" "itemArray[_pos][itemSprite]"
				/// @DnDArgument : "var_2" "itemArray[_pos][itemAmount]"
				itemArray[_pos][itemType] = _type;
				itemArray[_pos][itemSprite] = _sprite;
				itemArray[_pos][itemAmount] += 1;
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 34571516
				/// @DnDApplyTo : other
				/// @DnDParent : 394C0302
				with(other) instance_destroy();}
		}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 4BD31F2F
		/// @DnDParent : 73E529C7
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.testObject"
		global.testObject = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5F6C0C8D
		/// @DnDInput : 2
		/// @DnDParent : 73E529C7
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0F1735C1
		/// @DnDParent : 73E529C7
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 5C03014D
		/// @DnDParent : 73E529C7
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B6B65C6
	/// @DnDParent : 4D74D883
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "1"
	if(textSelected == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7397AA51
		/// @DnDParent : 5B6B65C6
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 52B53344
		/// @DnDInput : 2
		/// @DnDParent : 5B6B65C6
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3B83A51D
		/// @DnDParent : 5B6B65C6
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 545ED3CF
		/// @DnDParent : 5B6B65C6
		exit;}}